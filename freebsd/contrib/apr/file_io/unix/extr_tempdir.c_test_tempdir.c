
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_file_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_file_close (int *) ;
 scalar_t__ apr_file_mktemp (int **,char*,int ,int *) ;
 scalar_t__ apr_file_putc (char,int *) ;
 char* apr_pstrcat (int *,char const*,char*,int *) ;

__attribute__((used)) static int test_tempdir(const char *temp_dir, apr_pool_t *p)
{
    apr_file_t *dummy_file;
    char *path = apr_pstrcat(p, temp_dir, "/apr-tmp.XXXXXX", ((void*)0));

    if (apr_file_mktemp(&dummy_file, path, 0, p) == APR_SUCCESS) {
        if (apr_file_putc('!', dummy_file) == APR_SUCCESS) {
            if (apr_file_close(dummy_file) == APR_SUCCESS) {
                return 1;
            }
        }
    }
    return 0;
}
