
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {scalar_t__ expect; int resfile; } ;


 int EXIT_SUCCESS ;
 scalar_t__ EXPECT_FAIL ;
 scalar_t__ EXPECT_PASS ;
 int UNREACHABLE ;
 int create_resfile (int ,char*,int,int *) ;
 int error_in_expect (struct context*,char*) ;
 int exit (int ) ;

__attribute__((used)) static void
pass(struct context *ctx)
{
    if (ctx->expect == EXPECT_FAIL) {
        error_in_expect(ctx, "Test case was expecting a failure but got "
            "a pass instead");
    } else if (ctx->expect == EXPECT_PASS) {
        create_resfile(ctx->resfile, "passed", -1, ((void*)0));
        exit(EXIT_SUCCESS);
    } else {
        error_in_expect(ctx, "Test case asked to explicitly pass but was "
            "not expecting such condition");
    }
    UNREACHABLE;
}
