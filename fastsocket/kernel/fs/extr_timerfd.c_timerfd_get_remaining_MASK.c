#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timerfd_ctx {int /*<<< orphan*/  tmr; } ;
struct TYPE_5__ {scalar_t__ tv64; } ;
typedef  TYPE_1__ ktime_t ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ktime_t FUNC2(struct timerfd_ctx *ctx)
{
	ktime_t remaining;

	remaining = FUNC0(&ctx->tmr);
	return remaining.tv64 < 0 ? FUNC1(0, 0): remaining;
}