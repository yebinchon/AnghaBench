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
 int* IXP2000_RESET0 ; 
 int* IXP2000_T4_CLD ; 
 int* IXP2000_T4_CTL ; 
 int* IXP2000_TWDE ; 
 int TIMER_DIVIDER_256 ; 
 int TIMER_ENABLE ; 
 int WDT_ENABLE ; 
 int WDT_RESET_ENABLE ; 
 int heartbeat ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_lock ; 
 int wdt_tick_rate ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(&wdt_lock);
	FUNC0(IXP2000_RESET0, *(IXP2000_RESET0) | WDT_RESET_ENABLE);
	FUNC0(IXP2000_TWDE, WDT_ENABLE);
	FUNC0(IXP2000_T4_CLD, heartbeat * wdt_tick_rate);
	FUNC0(IXP2000_T4_CTL, TIMER_DIVIDER_256 | TIMER_ENABLE);
	FUNC2(&wdt_lock);
}