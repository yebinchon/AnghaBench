
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dsize; int dptr; } ;
struct TYPE_8__ {scalar_t__ visited; scalar_t__ deleted; TYPE_1__ key; } ;
typedef TYPE_2__ dbm_table_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_dbm_t ;
struct TYPE_9__ {scalar_t__ dsize; int * dptr; } ;
typedef TYPE_3__ apr_datum_t ;
typedef int abts_case ;


 int ABTS_INT_EQUAL (int *,int,scalar_t__) ;
 int APR_SUCCESS ;
 unsigned int NUM_TABLE_ROWS ;
 scalar_t__ apr_dbm_firstkey (int *,TYPE_3__*) ;
 scalar_t__ apr_dbm_nextkey (int *,TYPE_3__*) ;
 scalar_t__ memcmp (int ,int *,scalar_t__) ;

__attribute__((used)) static void test_dbm_traversal(abts_case *tc, apr_dbm_t *db, dbm_table_t *table)
{
    apr_status_t rv;
    unsigned int i;
    apr_datum_t key;

    rv = apr_dbm_firstkey(db, &key);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    do {
        if (key.dptr == ((void*)0) || key.dsize == 0)
            break;

        for (i = 0; i < NUM_TABLE_ROWS; i++) {
            if (table[i].key.dsize != key.dsize)
                continue;
            if (memcmp(table[i].key.dptr, key.dptr, key.dsize))
                continue;
            ABTS_INT_EQUAL(tc, 0, table[i].deleted);
            ABTS_INT_EQUAL(tc, 0, table[i].visited);
            table[i].visited++;
        }

        rv = apr_dbm_nextkey(db, &key);
        ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);
    } while (1);

    for (i = 0; i < NUM_TABLE_ROWS; i++) {
        if (table[i].deleted)
            continue;
        ABTS_INT_EQUAL(tc, 1, table[i].visited);
        table[i].visited = 0;
    }
}
