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
struct clock_event_device {int features; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_PERIODIC ; 
 int /*<<< orphan*/  CLOCK_EVT_MODE_ONESHOT ; 
 int /*<<< orphan*/  CLOCK_EVT_MODE_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct clock_event_device*) ; 
 int /*<<< orphan*/  tick_next_period ; 
 int /*<<< orphan*/  tick_period ; 
 int /*<<< orphan*/  FUNC8 (struct clock_event_device*,int) ; 
 int /*<<< orphan*/  xtime_lock ; 

void FUNC9(struct clock_event_device *dev, int broadcast)
{
	FUNC8(dev, broadcast);

	/* Broadcast setup ? */
	if (!FUNC7(dev))
		return;

	if ((dev->features & CLOCK_EVT_FEAT_PERIODIC) &&
	    !FUNC6()) {
		FUNC1(dev, CLOCK_EVT_MODE_PERIODIC);
	} else {
		unsigned long seq;
		ktime_t next;

		do {
			seq = FUNC4(&xtime_lock);
			next = tick_next_period;
		} while (FUNC5(&xtime_lock, seq));

		FUNC1(dev, CLOCK_EVT_MODE_ONESHOT);

		for (;;) {
			if (!FUNC0(dev, next, FUNC3()))
				return;
			next = FUNC2(next, tick_period);
		}
	}
}