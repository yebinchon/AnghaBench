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
struct TYPE_2__ {int /*<<< orphan*/  stop; int /*<<< orphan*/  timer; scalar_t__ queue; int /*<<< orphan*/  lock; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDC3210_CFGREG_DATA ; 
 int RDC_WDT_EN ; 
 scalar_t__ RDC_WDT_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ rdc321x_wdt_device ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void FUNC6(unsigned long unused)
{
	unsigned long flags;

	if (rdc321x_wdt_device.running)
		ticks--;

	/* keep watchdog alive */
	FUNC4(&rdc321x_wdt_device.lock, flags);
	FUNC3(RDC_WDT_EN | FUNC1(RDC3210_CFGREG_DATA),
		RDC3210_CFGREG_DATA);
	FUNC5(&rdc321x_wdt_device.lock, flags);

	/* requeue?? */
	if (rdc321x_wdt_device.queue && ticks)
		FUNC2(&rdc321x_wdt_device.timer,
				jiffies + RDC_WDT_INTERVAL);
	else {
		/* ticks doesn't matter anyway */
		FUNC0(&rdc321x_wdt_device.stop);
	}

}