#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct context {scalar_t__ expect; scalar_t__ expect_fail_count; scalar_t__ expect_previous_fail_count; } ;

/* Variables and functions */
 scalar_t__ EXPECT_DEATH ; 
 scalar_t__ EXPECT_EXIT ; 
 scalar_t__ EXPECT_FAIL ; 
 scalar_t__ EXPECT_PASS ; 
 scalar_t__ EXPECT_SIGNAL ; 
 scalar_t__ EXPECT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC1 (struct context*,char*) ; 

__attribute__((used)) static void
FUNC2(struct context *ctx)
{
    if (ctx->expect == EXPECT_DEATH) {
        FUNC1(ctx, "Test case was expected to terminate abruptly "
            "but it continued execution");
    } else if (ctx->expect == EXPECT_EXIT) {
        FUNC1(ctx, "Test case was expected to exit cleanly but it "
            "continued execution");
    } else if (ctx->expect == EXPECT_FAIL) {
        if (ctx->expect_fail_count == ctx->expect_previous_fail_count)
            FUNC1(ctx, "Test case was expecting a failure but none "
                "were raised");
        else
            FUNC0(ctx->expect_fail_count > ctx->expect_previous_fail_count);
    } else if (ctx->expect == EXPECT_PASS) {
        /* Nothing to validate. */
    } else if (ctx->expect == EXPECT_SIGNAL) {
        FUNC1(ctx, "Test case was expected to receive a termination "
            "signal but it continued execution");
    } else if (ctx->expect == EXPECT_TIMEOUT) {
        FUNC1(ctx, "Test case was expected to hang but it continued "
            "execution");
    } else
        UNREACHABLE;
}