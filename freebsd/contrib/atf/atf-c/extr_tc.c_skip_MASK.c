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
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ EXPECT_PASS ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct context*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct context *ctx, atf_dynstr_t *reason)
{
    if (ctx->expect == EXPECT_PASS) {
        FUNC0(ctx->resfile, "skipped", -1, reason);
        FUNC2(EXIT_SUCCESS);
    } else {
        FUNC1(ctx, "Can only skip a test case when running in "
            "expect pass mode");
    }
    UNREACHABLE;
}