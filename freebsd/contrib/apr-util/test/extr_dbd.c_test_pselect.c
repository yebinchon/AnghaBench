
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_dbd_t ;
typedef int apr_dbd_row_t ;
typedef int apr_dbd_results_t ;
typedef int apr_dbd_prepared_t ;
typedef int apr_dbd_driver_t ;


 char* apr_dbd_error (int const*,int *,int) ;
 char* apr_dbd_get_entry (int const*,int *,int) ;
 int apr_dbd_get_row (int const*,int *,int *,int **,int) ;
 int apr_dbd_num_cols (int const*,int *) ;
 int apr_dbd_prepare (int const*,int *,int *,char const*,char const*,int **) ;
 int apr_dbd_pvselect (int const*,int *,int *,int **,int *,int ,char*,int *) ;
 int fputs (char*,int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static int test_pselect(apr_pool_t* pool, apr_dbd_t* handle,
                        const apr_dbd_driver_t* driver)
{
    int rv = 0;
    int i, n;
    const char *query =
        "SELECT * FROM apr_dbd_test WHERE col3 <= %s or col1 = 'bar'" ;
    const char *label = "lowvalues";
    apr_dbd_prepared_t *statement = ((void*)0);
    apr_dbd_results_t *res = ((void*)0);
    apr_dbd_row_t *row = ((void*)0);
    const char *entry = ((void*)0);

    rv = apr_dbd_prepare(driver, pool, handle, query, label, &statement);
    if (rv) {
        printf("Prepare statement failed!\n%s\n",
               apr_dbd_error(driver, handle, rv));
        return rv;
    }
    rv = apr_dbd_pvselect(driver, pool, handle, &res, statement, 0, "3", ((void*)0));
    if (rv) {
        printf("Exec of prepared statement failed!\n%s\n",
               apr_dbd_error(driver, handle, rv));
        return rv;
    }
    i = 0;
    printf("Selecting rows where col3 <= 3 and bar row where it's unset.\nShould show four rows.\n");
    for (rv = apr_dbd_get_row(driver, pool, res, &row, -1);
         rv == 0;
         rv = apr_dbd_get_row(driver, pool, res, &row, -1)) {
        printf("ROW %d:	", ++i) ;
        for (n = 0; n < apr_dbd_num_cols(driver, res); ++n) {
            entry = apr_dbd_get_entry(driver, row, n);
            if (entry == ((void*)0)) {
                printf("(null)	") ;
            }
            else {
                printf("%s	", entry);
            }
        }
 fputs("\n", stdout);
    }
    return (rv == -1) ? 0 : 1;
}
