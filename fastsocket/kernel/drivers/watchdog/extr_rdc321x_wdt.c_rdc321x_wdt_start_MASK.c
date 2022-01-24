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
struct TYPE_2__ {int queue; int /*<<< orphan*/  running; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDC3210_CFGREG_ADDR ; 
 int /*<<< orphan*/  RDC3210_CFGREG_DATA ; 
 int RDC_CLS_TMR ; 
 int RDC_WDT_CNT ; 
 int RDC_WDT_EN ; 
 scalar_t__ RDC_WDT_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ rdc321x_wdt_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long flags;

	if (!rdc321x_wdt_device.queue) {
		rdc321x_wdt_device.queue = 1;

		/* Clear the timer */
		FUNC2(&rdc321x_wdt_device.lock, flags);
		FUNC1(RDC_CLS_TMR, RDC3210_CFGREG_ADDR);

		/* Enable watchdog and set the timeout to 81.92 us */
		FUNC1(RDC_WDT_EN | RDC_WDT_CNT, RDC3210_CFGREG_DATA);
		FUNC3(&rdc321x_wdt_device.lock, flags);

		FUNC0(&rdc321x_wdt_device.timer,
				jiffies + RDC_WDT_INTERVAL);
	}

	/* if process dies, counter is not decremented */
	rdc321x_wdt_device.running++;
}