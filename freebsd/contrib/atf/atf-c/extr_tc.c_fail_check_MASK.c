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
struct context {scalar_t__ expect; int /*<<< orphan*/  fail_count; int /*<<< orphan*/  expect_fail_count; int /*<<< orphan*/  expect_reason; } ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 scalar_t__ EXPECT_FAIL ; 
 scalar_t__ EXPECT_PASS ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(struct context *ctx, atf_dynstr_t *reason)
{
    if (ctx->expect == EXPECT_FAIL) {
        FUNC3(stderr, "*** Expected check failure: %s: %s\n",
            FUNC0(&ctx->expect_reason),
            FUNC0(reason));
        ctx->expect_fail_count++;
    } else if (ctx->expect == EXPECT_PASS) {
        FUNC3(stderr, "*** Check failed: %s\n", FUNC0(reason));
        ctx->fail_count++;
    } else {
        FUNC2(ctx, "Test case raised a failure but was not "
            "expecting one; reason was %s", FUNC0(reason));
    }

    FUNC1(reason);
}