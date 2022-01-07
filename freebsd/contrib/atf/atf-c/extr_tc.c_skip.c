
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {scalar_t__ expect; int resfile; } ;
typedef int atf_dynstr_t ;


 int EXIT_SUCCESS ;
 scalar_t__ EXPECT_PASS ;
 int UNREACHABLE ;
 int create_resfile (int ,char*,int,int *) ;
 int error_in_expect (struct context*,char*) ;
 int exit (int ) ;

__attribute__((used)) static void
skip(struct context *ctx, atf_dynstr_t *reason)
{
    if (ctx->expect == EXPECT_PASS) {
        create_resfile(ctx->resfile, "skipped", -1, reason);
        exit(EXIT_SUCCESS);
    } else {
        error_in_expect(ctx, "Can only skip a test case when running in "
            "expect pass mode");
    }
    UNREACHABLE;
}
