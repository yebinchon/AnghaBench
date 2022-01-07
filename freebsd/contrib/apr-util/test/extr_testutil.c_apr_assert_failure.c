
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int abts_case ;


 scalar_t__ APR_ENOTIMPL ;
 scalar_t__ APR_SUCCESS ;
 int STRING_MAX ;
 int abts_fail (int *,char*,int) ;
 int abts_not_impl (int *,char const*,int) ;
 int sprintf (char*,char*,char const*,scalar_t__) ;

void apr_assert_failure(abts_case* tc, const char* context, apr_status_t rv,
                        int lineno)
{
    if (rv == APR_ENOTIMPL) {
        abts_not_impl(tc, context, lineno);
    } else if (rv == APR_SUCCESS) {
        char buf[STRING_MAX];
        sprintf(buf, "%s (%d): expected failure, got success\n", context, rv);
        abts_fail(tc, buf, lineno);
    }
}
