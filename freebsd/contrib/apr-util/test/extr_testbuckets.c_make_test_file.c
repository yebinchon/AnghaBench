
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_file_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int APR_FOPEN_CREATE ;
 int APR_FOPEN_READ ;
 int APR_FOPEN_TRUNCATE ;
 int APR_FOPEN_WRITE ;
 int APR_OS_DEFAULT ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_file_open (int **,char const*,int,int ,int ) ;
 scalar_t__ apr_file_puts (char const*,int *) ;
 int p ;

__attribute__((used)) static apr_file_t *make_test_file(abts_case *tc, const char *fname,
                                  const char *contents)
{
    apr_file_t *f;

    ABTS_ASSERT(tc, "create test file",
                apr_file_open(&f, fname,
                              APR_FOPEN_READ|APR_FOPEN_WRITE|APR_FOPEN_TRUNCATE|APR_FOPEN_CREATE,
                              APR_OS_DEFAULT, p) == APR_SUCCESS);

    ABTS_ASSERT(tc, "write test file contents",
                apr_file_puts(contents, f) == APR_SUCCESS);

    return f;
}
