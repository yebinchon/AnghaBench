#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct TYPE_2__ {int /*<<< orphan*/  unlock_sequence; scalar_t__ sch_wdtba; } ;

/* Variables and functions */
 scalar_t__ WDTLR ; 
 int /*<<< orphan*/  WDT_ENABLE ; 
 TYPE_1__ ie6xx_wdt_data ; 
 int /*<<< orphan*/  FUNC0 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	FUNC0(wdd, wdd->timeout);

	/* Enable the watchdog timer */
	FUNC2(&ie6xx_wdt_data.unlock_sequence);
	FUNC1(WDT_ENABLE, ie6xx_wdt_data.sch_wdtba + WDTLR);
	FUNC3(&ie6xx_wdt_data.unlock_sequence);

	return 0;
}