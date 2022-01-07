
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int val ;
struct TYPE_8__ {int dptr; int dsize; } ;
struct TYPE_9__ {TYPE_1__ val; int deleted; int key; } ;
typedef TYPE_2__ dbm_table_t ;
typedef int apr_status_t ;
typedef int apr_dbm_t ;
struct TYPE_10__ {int dsize; int dptr; } ;
typedef TYPE_3__ apr_datum_t ;
typedef int abts_case ;


 int ABTS_INT_EQUAL (int *,int ,int ) ;
 int APR_SUCCESS ;
 unsigned int NUM_TABLE_ROWS ;
 int apr_dbm_fetch (int *,int ,TYPE_3__*) ;
 int apr_dbm_freedatum (int *,TYPE_3__) ;
 int memcmp (int ,int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void test_dbm_fetch(abts_case *tc, apr_dbm_t *db, dbm_table_t *table)
{
    apr_status_t rv;
    unsigned int i;
    apr_datum_t val;

    for (i = 0; i < NUM_TABLE_ROWS; i++) {
        memset(&val, 0, sizeof(val));
        rv = apr_dbm_fetch(db, table[i].key, &val);
        if (!table[i].deleted) {
            ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);
            ABTS_INT_EQUAL(tc, table[i].val.dsize, val.dsize);
            ABTS_INT_EQUAL(tc, 0, memcmp(table[i].val.dptr, val.dptr, val.dsize));
            apr_dbm_freedatum(db, val);
        } else {
            ABTS_INT_EQUAL(tc, 0, val.dsize);
        }
    }
}
