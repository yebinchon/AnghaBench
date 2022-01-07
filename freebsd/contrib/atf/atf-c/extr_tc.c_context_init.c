
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {char const* resfile; scalar_t__ expect_signo; scalar_t__ expect_exitcode; scalar_t__ expect_fail_count; scalar_t__ expect_previous_fail_count; int expect_reason; int expect; scalar_t__ fail_count; int const* tc; } ;
typedef int atf_tc_t ;


 int EXPECT_PASS ;
 int atf_dynstr_init (int *) ;
 int check_fatal_error (int ) ;

__attribute__((used)) static void
context_init(struct context *ctx, const atf_tc_t *tc, const char *resfile)
{
    ctx->tc = tc;
    ctx->resfile = resfile;
    ctx->fail_count = 0;
    ctx->expect = EXPECT_PASS;
    check_fatal_error(atf_dynstr_init(&ctx->expect_reason));
    ctx->expect_previous_fail_count = 0;
    ctx->expect_fail_count = 0;
    ctx->expect_exitcode = 0;
    ctx->expect_signo = 0;
}
