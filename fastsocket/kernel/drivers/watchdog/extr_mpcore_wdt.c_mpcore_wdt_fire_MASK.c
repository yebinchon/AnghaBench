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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 scalar_t__ TWD_WDOG_INTSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *arg)
{
	struct mpcore_wdt *wdt = arg;

	/* Check it really was our interrupt */
	if (FUNC1(wdt->base + TWD_WDOG_INTSTAT)) {
		FUNC0(KERN_CRIT, wdt->dev,
					"Triggered - Reboot ignored.\n");
		/* Clear the interrupt on the watchdog */
		FUNC2(1, wdt->base + TWD_WDOG_INTSTAT);
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}