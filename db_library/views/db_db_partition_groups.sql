--# Copyright IBM Corp. All Rights Reserved.
--# SPDX-License-Identifier: Apache-2.0

/*
 * Lists all the partition groups on the database
 */

CREATE OR REPLACE VIEW DB_DB_PARTITION_GROUPS AS
SELECT
    DBPGNAME
,   LISTAGG(DBPARTITIONNUM, ',') WITHIN GROUP (ORDER BY DBPARTITIONNUM ASC) AS DATASLICES
FROM 
    SYSCAT.DBPARTITIONGROUPDEF
GROUP BY 
    DBPGNAME