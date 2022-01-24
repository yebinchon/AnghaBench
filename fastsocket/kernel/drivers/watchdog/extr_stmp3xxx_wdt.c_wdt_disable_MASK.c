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
 int /*<<< orphan*/  BM_RTC_CTRL_WATCHDOGEN ; 
 int /*<<< orphan*/  BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER ; 
 scalar_t__ HW_RTC_CTRL ; 
 scalar_t__ HW_RTC_PERSISTENT1 ; 
 scalar_t__ REGS_RTC_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stmp3xxx_wdt_io_lock ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC0(&stmp3xxx_wdt_io_lock);
	FUNC2(BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER,
			REGS_RTC_BASE + HW_RTC_PERSISTENT1);
	FUNC2(BM_RTC_CTRL_WATCHDOGEN, REGS_RTC_BASE + HW_RTC_CTRL);
	FUNC1(&stmp3xxx_wdt_io_lock);
}