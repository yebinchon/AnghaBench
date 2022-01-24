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

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ U300_WDOG_FR ; 
 int U300_WDOG_FR_FEED_RESTART_TIMER ; 
 scalar_t__ U300_WDOG_TR ; 
 int /*<<< orphan*/  clk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int margin ; 
 scalar_t__ virtbase ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(int time)
{
	/*
	 * Max margin is 327 since the 10ms
	 * timeout register is max
	 * 0x7FFF = 327670ms ~= 327s.
	 */
	if (time <= 0 || time > 327)
		return -EINVAL;

	margin = time;
	FUNC1(clk);
	/* Set new timeout value */
	FUNC2(margin * 100, virtbase + U300_WDOG_TR);
	/* Feed the dog */
	FUNC2(U300_WDOG_FR_FEED_RESTART_TIMER,
	       virtbase + U300_WDOG_FR);
	FUNC0(clk);
	return 0;
}