
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int errno_test (struct context*,char const*,size_t const,int const,char const*,int const,int ) ;
 int fail_check ;

__attribute__((used)) static void
_atf_tc_check_errno(struct context *ctx, const char *file, const size_t line,
                    const int exp_errno, const char *expr_str,
                    const bool expr_result)
{
    errno_test(ctx, file, line, exp_errno, expr_str, expr_result, fail_check);
}
