
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_dbd_t ;
typedef int apr_dbd_driver_t ;


 int apr_dbd_query (int const*,int *,int*,char const*) ;

__attribute__((used)) static int drop_table(apr_pool_t* pool, apr_dbd_t* handle,
                      const apr_dbd_driver_t* driver)
{
    int rv = 0;
    int nrows;
    const char *statement = "DROP TABLE apr_dbd_test" ;
    rv = apr_dbd_query(driver, handle, &nrows, statement);
    return rv;
}
