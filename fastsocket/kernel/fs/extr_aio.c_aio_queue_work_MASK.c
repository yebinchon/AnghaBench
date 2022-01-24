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
struct kioctx {int /*<<< orphan*/  wq; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  aio_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kioctx * ctx)
{
	unsigned long timeout;
	/*
	 * if someone is waiting, get the work started right
	 * away, otherwise, use a longer delay
	 */
	FUNC1();
	if (FUNC2(&ctx->wait))
		timeout = 1;
	else
		timeout = HZ/10;
	FUNC0(aio_wq, &ctx->wq, timeout);
}