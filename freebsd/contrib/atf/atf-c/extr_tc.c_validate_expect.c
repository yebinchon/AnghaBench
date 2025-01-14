
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {scalar_t__ expect; scalar_t__ expect_fail_count; scalar_t__ expect_previous_fail_count; } ;


 scalar_t__ EXPECT_DEATH ;
 scalar_t__ EXPECT_EXIT ;
 scalar_t__ EXPECT_FAIL ;
 scalar_t__ EXPECT_PASS ;
 scalar_t__ EXPECT_SIGNAL ;
 scalar_t__ EXPECT_TIMEOUT ;
 int INV (int) ;
 int UNREACHABLE ;
 int error_in_expect (struct context*,char*) ;

__attribute__((used)) static void
validate_expect(struct context *ctx)
{
    if (ctx->expect == EXPECT_DEATH) {
        error_in_expect(ctx, "Test case was expected to terminate abruptly "
            "but it continued execution");
    } else if (ctx->expect == EXPECT_EXIT) {
        error_in_expect(ctx, "Test case was expected to exit cleanly but it "
            "continued execution");
    } else if (ctx->expect == EXPECT_FAIL) {
        if (ctx->expect_fail_count == ctx->expect_previous_fail_count)
            error_in_expect(ctx, "Test case was expecting a failure but none "
                "were raised");
        else
            INV(ctx->expect_fail_count > ctx->expect_previous_fail_count);
    } else if (ctx->expect == EXPECT_PASS) {

    } else if (ctx->expect == EXPECT_SIGNAL) {
        error_in_expect(ctx, "Test case was expected to receive a termination "
            "signal but it continued execution");
    } else if (ctx->expect == EXPECT_TIMEOUT) {
        error_in_expect(ctx, "Test case was expected to hang but it continued "
            "execution");
    } else
        UNREACHABLE;
}
