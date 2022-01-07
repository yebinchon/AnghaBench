
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbm_table_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_dbm_t ;
typedef int abts_case ;


 int ABTS_INT_EQUAL (int *,scalar_t__,scalar_t__) ;
 int APR_DBM_READONLY ;
 int APR_DBM_RWCREATE ;
 int APR_OS_DEFAULT ;
 scalar_t__ APR_SUCCESS ;
 int apr_dbm_close (int *) ;
 scalar_t__ apr_dbm_open_ex (int **,char const*,char const*,int ,int ,int ) ;
 char* apr_pstrcat (int ,char*,char const*,int *) ;
 int * generate_table () ;
 int p ;
 int test_dbm_delete (int *,int *,int *) ;
 int test_dbm_exists (int *,int *,int *) ;
 int test_dbm_fetch (int *,int *,int *) ;
 int test_dbm_store (int *,int *,int *) ;
 int test_dbm_traversal (int *,int *,int *) ;

__attribute__((used)) static void test_dbm(abts_case *tc, void *data)
{
    apr_dbm_t *db;
    apr_status_t rv;
    dbm_table_t *table;
    const char *type = data;
    const char *file = apr_pstrcat(p, "data/test-", type, ((void*)0));

    rv = apr_dbm_open_ex(&db, type, file, APR_DBM_RWCREATE, APR_OS_DEFAULT, p);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return;

    table = generate_table();

    test_dbm_store(tc, db, table);
    test_dbm_fetch(tc, db, table);
    test_dbm_delete(tc, db, table);
    test_dbm_exists(tc, db, table);
    test_dbm_traversal(tc, db, table);

    apr_dbm_close(db);

    rv = apr_dbm_open_ex(&db, type, file, APR_DBM_READONLY, APR_OS_DEFAULT, p);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return;

    test_dbm_exists(tc, db, table);
    test_dbm_traversal(tc, db, table);
    test_dbm_fetch(tc, db, table);

    apr_dbm_close(db);
}
