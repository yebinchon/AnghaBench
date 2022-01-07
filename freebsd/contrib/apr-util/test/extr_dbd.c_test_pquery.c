
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_dbd_transaction_t ;
typedef int apr_dbd_t ;
typedef int apr_dbd_prepared_t ;
typedef int apr_dbd_driver_t ;


 char* apr_dbd_error (int const*,int *,int) ;
 int apr_dbd_prepare (int const*,int *,int *,char const*,char const*,int **) ;
 int apr_dbd_pvquery (int const*,int *,int *,int*,int *,char*,char*,char*,int *) ;
 int apr_dbd_transaction_end (int const*,int *,int *) ;
 int apr_dbd_transaction_start (int const*,int *,int *,int **) ;
 int printf (char*,...) ;
 int select_sequential (int *,int *,int const*) ;

__attribute__((used)) static int test_pquery(apr_pool_t* pool, apr_dbd_t* handle,
                       const apr_dbd_driver_t* driver)
{
    int rv = 0;
    const char *query = "INSERT INTO apr_dbd_test VALUES (%s, %s, %d)";
    apr_dbd_prepared_t *statement = ((void*)0);
    const char *label = "testpquery";
    int nrows;
    apr_dbd_transaction_t *trans =0;

    rv = apr_dbd_prepare(driver, pool, handle, query, label, &statement);

    if (rv) {
        printf("Prepare statement failed!\n%s\n",
               apr_dbd_error(driver, handle, rv));
        return rv;
    }
    apr_dbd_transaction_start(driver, pool, handle, &trans);
    rv = apr_dbd_pvquery(driver, pool, handle, &nrows, statement,
                         "prepared", "insert", "2", ((void*)0));
    apr_dbd_transaction_end(driver, pool, trans);
    if (rv) {
        printf("Exec of prepared statement failed!\n%s\n",
               apr_dbd_error(driver, handle, rv));
        return rv;
    }
    printf("Showing table (should now contain row \"prepared insert 2\")\n");
    select_sequential(pool, handle, driver);
    return rv;
}
