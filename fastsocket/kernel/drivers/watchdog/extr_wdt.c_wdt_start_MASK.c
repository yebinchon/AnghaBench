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
 int /*<<< orphan*/  WDT_DC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int wd_heartbeat ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  wdt_lock ; 

__attribute__((used)) static int FUNC6(void)
{
	unsigned long flags;
	FUNC2(&wdt_lock, flags);
	FUNC0(WDT_DC);			/* Disable watchdog */
	FUNC5(0, 3);		/* Program CTR0 for Mode 3:
						Square Wave Generator */
	FUNC5(1, 2);		/* Program CTR1 for Mode 2:
						Rate Generator */
	FUNC5(2, 0);		/* Program CTR2 for Mode 0:
						Pulse on Terminal Count */
	FUNC4(0, 8948);		/* Count at 100Hz */
	FUNC4(1, wd_heartbeat);	/* Heartbeat */
	FUNC4(2, 65535);		/* Length of reset pulse */
	FUNC1(0, WDT_DC);		/* Enable watchdog */
	FUNC3(&wdt_lock, flags);
	return 0;
}