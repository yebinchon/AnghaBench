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
struct clock_event_device {scalar_t__ mode; int /*<<< orphan*/  next_event; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  tick_period ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 

void FUNC6(struct clock_event_device *dev)
{
	int cpu = FUNC3();
	ktime_t next;

	FUNC4(cpu);

	if (dev->mode != CLOCK_EVT_MODE_ONESHOT)
		return;
	/*
	 * Setup the next period for devices, which do not have
	 * periodic mode:
	 */
	next = FUNC1(dev->next_event, tick_period);
	for (;;) {
		if (!FUNC0(dev, next, FUNC2()))
			return;
		/*
		 * Have to be careful here. If we're in oneshot mode,
		 * before we call tick_periodic() in a loop, we need
		 * to be sure we're using a real hardware clocksource.
		 * Otherwise we could get trapped in an infinite
		 * loop, as the tick_periodic() increments jiffies,
		 * when then will increment time, posibly causing
		 * the loop to trigger again and again.
		 */
		if (FUNC5())
			FUNC4(cpu);
		next = FUNC1(next, tick_period);
	}
}