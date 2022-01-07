
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {scalar_t__ expect; int fail_count; int expect_fail_count; int expect_reason; } ;
typedef int atf_dynstr_t ;


 scalar_t__ EXPECT_FAIL ;
 scalar_t__ EXPECT_PASS ;
 char* atf_dynstr_cstring (int *) ;
 int atf_dynstr_fini (int *) ;
 int error_in_expect (struct context*,char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int stderr ;

__attribute__((used)) static void
fail_check(struct context *ctx, atf_dynstr_t *reason)
{
    if (ctx->expect == EXPECT_FAIL) {
        fprintf(stderr, "*** Expected check failure: %s: %s\n",
            atf_dynstr_cstring(&ctx->expect_reason),
            atf_dynstr_cstring(reason));
        ctx->expect_fail_count++;
    } else if (ctx->expect == EXPECT_PASS) {
        fprintf(stderr, "*** Check failed: %s\n", atf_dynstr_cstring(reason));
        ctx->fail_count++;
    } else {
        error_in_expect(ctx, "Test case raised a failure but was not "
            "expecting one; reason was %s", atf_dynstr_cstring(reason));
    }

    atf_dynstr_fini(reason);
}
