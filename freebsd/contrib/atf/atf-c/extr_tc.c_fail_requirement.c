
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {scalar_t__ expect; int resfile; } ;
typedef int atf_dynstr_t ;


 int EXIT_FAILURE ;
 scalar_t__ EXPECT_FAIL ;
 scalar_t__ EXPECT_PASS ;
 int UNREACHABLE ;
 int atf_dynstr_cstring (int *) ;
 int create_resfile (int ,char*,int,int *) ;
 int error_in_expect (struct context*,char*,int ) ;
 int exit (int ) ;
 int expected_failure (struct context*,int *) ;

__attribute__((used)) static void
fail_requirement(struct context *ctx, atf_dynstr_t *reason)
{
    if (ctx->expect == EXPECT_FAIL) {
        expected_failure(ctx, reason);
    } else if (ctx->expect == EXPECT_PASS) {
        create_resfile(ctx->resfile, "failed", -1, reason);
        exit(EXIT_FAILURE);
    } else {
        error_in_expect(ctx, "Test case raised a failure but was not "
            "expecting one; reason was %s", atf_dynstr_cstring(reason));
    }
    UNREACHABLE;
}
