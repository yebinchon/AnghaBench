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
struct mpcore_wdt {scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ TWD_WDOG_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ mpcore_noboot ; 
 int /*<<< orphan*/  FUNC1 (struct mpcore_wdt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_lock ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mpcore_wdt *wdt)
{
	FUNC0(KERN_INFO, wdt->dev, "enabling watchdog.\n");

	FUNC2(&wdt_lock);
	/* This loads the count register but does NOT start the count yet */
	FUNC1(wdt);

	if (mpcore_noboot) {
		/* Enable watchdog - prescale=256, watchdog mode=0, enable=1 */
		FUNC4(0x0000FF01, wdt->base + TWD_WDOG_CONTROL);
	} else {
		/* Enable watchdog - prescale=256, watchdog mode=1, enable=1 */
		FUNC4(0x0000FF09, wdt->base + TWD_WDOG_CONTROL);
	}
	FUNC3(&wdt_lock);
}