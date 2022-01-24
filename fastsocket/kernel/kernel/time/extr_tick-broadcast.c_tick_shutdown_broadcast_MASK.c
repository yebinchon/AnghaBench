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
struct clock_event_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; struct clock_event_device* evtdev; } ;

/* Variables and functions */
 scalar_t__ TICKDEV_MODE_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ tick_broadcast_device ; 
 int /*<<< orphan*/  tick_broadcast_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(unsigned int *cpup)
{
	struct clock_event_device *bc;
	unsigned long flags;
	unsigned int cpu = *cpup;

	FUNC3(&tick_broadcast_lock, flags);

	bc = tick_broadcast_device.evtdev;
	FUNC1(cpu, FUNC5());

	if (tick_broadcast_device.mode == TICKDEV_MODE_PERIODIC) {
		if (bc && FUNC2(FUNC5()))
			FUNC0(bc);
	}

	FUNC4(&tick_broadcast_lock, flags);
}