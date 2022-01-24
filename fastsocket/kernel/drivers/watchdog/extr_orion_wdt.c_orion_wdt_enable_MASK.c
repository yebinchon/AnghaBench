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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_CAUSE ; 
 int /*<<< orphan*/  RSTOUTn_MASK ; 
 int /*<<< orphan*/  TIMER_CTRL ; 
 int WDT_EN ; 
 int WDT_INT_REQ ; 
 int WDT_RESET_OUT_EN ; 
 int /*<<< orphan*/  WDT_VAL ; 
 int heartbeat ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_lock ; 
 int wdt_tclk ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 reg;

	FUNC1(&wdt_lock);

	/* Set watchdog duration */
	FUNC3(wdt_tclk * heartbeat, WDT_VAL);

	/* Clear watchdog timer interrupt */
	reg = FUNC0(BRIDGE_CAUSE);
	reg &= ~WDT_INT_REQ;
	FUNC3(reg, BRIDGE_CAUSE);

	/* Enable watchdog timer */
	reg = FUNC0(TIMER_CTRL);
	reg |= WDT_EN;
	FUNC3(reg, TIMER_CTRL);

	/* Enable reset on watchdog */
	reg = FUNC0(RSTOUTn_MASK);
	reg |= WDT_RESET_OUT_EN;
	FUNC3(reg, RSTOUTn_MASK);

	FUNC2(&wdt_lock);
}