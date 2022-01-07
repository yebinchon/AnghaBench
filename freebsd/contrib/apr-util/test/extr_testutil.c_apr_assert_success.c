
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int abts_case ;


 int ABTS_FAIL (int *,char*) ;
 int ABTS_NOT_IMPL (int *,char const*) ;
 scalar_t__ APR_ENOTIMPL ;
 scalar_t__ APR_SUCCESS ;
 int STRING_MAX ;
 char* apr_strerror (scalar_t__,char*,int) ;
 int sprintf (char*,char*,char const*,scalar_t__,char*) ;

void apr_assert_success(abts_case* tc, const char* context, apr_status_t rv)
{
    if (rv == APR_ENOTIMPL) {
        ABTS_NOT_IMPL(tc, context);
    }

    if (rv != APR_SUCCESS) {
        char buf[STRING_MAX], ebuf[128];
        sprintf(buf, "%s (%d): %s\n", context, rv,
                apr_strerror(rv, ebuf, sizeof ebuf));
        ABTS_FAIL(tc, buf);
    }
}
