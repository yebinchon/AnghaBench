
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ deleted; int key; } ;
typedef TYPE_1__ dbm_table_t ;
typedef int apr_dbm_t ;
typedef int abts_case ;


 int ABTS_TRUE (int *,int) ;
 unsigned int NUM_TABLE_ROWS ;
 int apr_dbm_exists (int *,int ) ;

__attribute__((used)) static void test_dbm_exists(abts_case *tc, apr_dbm_t *db, dbm_table_t *table)
{
    unsigned int i;
    int cond;

    for (i = 0; i < NUM_TABLE_ROWS; i++) {
        cond = apr_dbm_exists(db, table[i].key);
        if (table[i].deleted) {
            ABTS_TRUE(tc, cond == 0);
        } else {
            ABTS_TRUE(tc, cond != 0);
        }
    }
}
