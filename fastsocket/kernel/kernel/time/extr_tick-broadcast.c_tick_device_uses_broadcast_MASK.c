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
struct clock_event_device {int features; int /*<<< orphan*/  event_handler; } ;
struct TYPE_2__ {int /*<<< orphan*/  evtdev; } ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_C3STOP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__ tick_broadcast_device ; 
 int /*<<< orphan*/  tick_broadcast_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  tick_handle_periodic ; 

int FUNC9(struct clock_event_device *dev, int cpu)
{
	unsigned long flags;
	int ret = 0;

	FUNC3(&tick_broadcast_lock, flags);

	/*
	 * Devices might be registered with both periodic and oneshot
	 * mode disabled. This signals, that the device needs to be
	 * operated from the broadcast device and is a placeholder for
	 * the cpu local device.
	 */
	if (!FUNC7(dev)) {
		dev->event_handler = tick_handle_periodic;
		FUNC1(cpu, FUNC8());
		FUNC6(tick_broadcast_device.evtdev);
		ret = 1;
	} else {
		/*
		 * When the new device is not affected by the stop
		 * feature and the cpu is marked in the broadcast mask
		 * then clear the broadcast bit.
		 */
		if (!(dev->features & CLOCK_EVT_FEAT_C3STOP)) {
			int cpu = FUNC2();

			FUNC0(cpu, FUNC8());
			FUNC5(cpu);
		}
	}
	FUNC4(&tick_broadcast_lock, flags);
	return ret;
}