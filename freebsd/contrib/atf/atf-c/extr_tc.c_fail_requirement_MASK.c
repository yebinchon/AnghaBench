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
struct context {scalar_t__ expect; int /*<<< orphan*/  resfile; } ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ EXPECT_FAIL ; 
 scalar_t__ EXPECT_PASS ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct context*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct context *ctx, atf_dynstr_t *reason)
{
    if (ctx->expect == EXPECT_FAIL) {
        FUNC4(ctx, reason);
    } else if (ctx->expect == EXPECT_PASS) {
        FUNC1(ctx->resfile, "failed", -1, reason);
        FUNC3(EXIT_FAILURE);
    } else {
        FUNC2(ctx, "Test case raised a failure but was not "
            "expecting one; reason was %s", FUNC0(reason));
    }
    UNREACHABLE;
}