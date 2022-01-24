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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  mibII_idle ; 
 int mibII_poll_ticks ; 
 int /*<<< orphan*/ * mibII_poll_timer ; 
 int /*<<< orphan*/  module ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	if (mibII_poll_timer != NULL)
		FUNC2(mibII_poll_timer);

	if ((mibII_poll_timer = FUNC1(mibII_poll_ticks * 10,
	    mibII_poll_ticks * 10, mibII_idle, NULL, module)) == NULL)
		FUNC0(LOG_ERR, "timer_start(%u): %m", mibII_poll_ticks);
}