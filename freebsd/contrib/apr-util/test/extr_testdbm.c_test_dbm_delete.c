
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int deleted; int key; } ;
typedef TYPE_1__ dbm_table_t ;
typedef int apr_status_t ;
typedef int apr_dbm_t ;
typedef int abts_case ;


 int ABTS_INT_EQUAL (int *,int ,int ) ;
 int APR_SUCCESS ;
 unsigned int NUM_TABLE_ROWS ;
 int TRUE ;
 int apr_dbm_delete (int *,int ) ;

__attribute__((used)) static void test_dbm_delete(abts_case *tc, apr_dbm_t *db, dbm_table_t *table)
{
    apr_status_t rv;
    unsigned int i;

    for (i = 0; i < NUM_TABLE_ROWS; i++) {

        if (i & 1)
            continue;
        rv = apr_dbm_delete(db, table[i].key);
        ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);
        table[i].deleted = TRUE;
    }
}
