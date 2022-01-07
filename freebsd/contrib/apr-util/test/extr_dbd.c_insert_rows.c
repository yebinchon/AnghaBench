
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_dbd_t ;
typedef int apr_dbd_driver_t ;


 int apr_dbd_query (int const*,int *,int*,char const*) ;
 int printf (char*,...) ;

__attribute__((used)) static int insert_rows(apr_pool_t* pool, apr_dbd_t* handle,
                       const apr_dbd_driver_t* driver)
{
    int i;
    int rv = 0;
    int nrows;
    int nerrors = 0;
    const char *statement =
        "INSERT into apr_dbd_test (col1) values ('foo');"
        "INSERT into apr_dbd_test values ('wibble', 'other', 5);"
        "INSERT into apr_dbd_test values ('wibble', 'nothing', 5);"
        "INSERT into apr_dbd_test values ('qwerty', 'foo', 0);"
        "INSERT into apr_dbd_test values ('asdfgh', 'bar', 1);"
    ;
    rv = apr_dbd_query(driver, handle, &nrows, statement);
    if (rv) {
        const char* stmt[] = {
            "INSERT into apr_dbd_test (col1) values ('foo');",
            "INSERT into apr_dbd_test values ('wibble', 'other', 5);",
            "INSERT into apr_dbd_test values ('wibble', 'nothing', 5);",
            "INSERT into apr_dbd_test values ('qwerty', 'foo', 0);",
            "INSERT into apr_dbd_test values ('asdfgh', 'bar', 1);",
            ((void*)0)
        };
        printf("Compound insert failed; trying statements one-by-one\n") ;
        for (i=0; stmt[i] != ((void*)0); ++i) {
            statement = stmt[i];
            rv = apr_dbd_query(driver, handle, &nrows, statement);
            if (rv) {
                nerrors++;
            }
        }
        if (nerrors) {
            printf("%d single inserts failed too.\n", nerrors) ;
        }
    }
    return rv;
}
