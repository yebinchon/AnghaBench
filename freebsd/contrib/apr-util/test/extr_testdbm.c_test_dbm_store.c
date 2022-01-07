
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* deleted; int val; int key; } ;
typedef TYPE_1__ dbm_table_t ;
typedef int apr_status_t ;
typedef int apr_dbm_t ;
typedef int abts_case ;


 int ABTS_INT_EQUAL (int *,int ,int ) ;
 int APR_SUCCESS ;
 void* FALSE ;
 int NUM_TABLE_ROWS ;
 int apr_dbm_store (int *,int ,int ) ;

__attribute__((used)) static void test_dbm_store(abts_case *tc, apr_dbm_t *db, dbm_table_t *table)
{
    apr_status_t rv;
    unsigned int i = NUM_TABLE_ROWS - 1;

    for (; i >= NUM_TABLE_ROWS/2; i--) {
        rv = apr_dbm_store(db, table[i].key, table[i].val);
        ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);
        table[i].deleted = FALSE;
    }

    for (i = 0; i < NUM_TABLE_ROWS/2; i++) {
        rv = apr_dbm_store(db, table[i].key, table[i].val);
        ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);
        table[i].deleted = FALSE;
    }
}
