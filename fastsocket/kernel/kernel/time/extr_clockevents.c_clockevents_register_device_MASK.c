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
struct clock_event_device {scalar_t__ mode; int /*<<< orphan*/  list; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CLOCK_EVT_MODE_UNUSED ; 
 int /*<<< orphan*/  CLOCK_EVT_NOTIFY_ADD ; 
 int /*<<< orphan*/  clockevent_devices ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct clock_event_device*) ; 
 int /*<<< orphan*/  clockevents_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct clock_event_device *dev)
{
	unsigned long flags;

	FUNC0(dev->mode != CLOCK_EVT_MODE_UNUSED);
	FUNC0(!dev->cpumask);

	FUNC4(&clockevents_lock, flags);

	FUNC3(&dev->list, &clockevent_devices);
	FUNC1(CLOCK_EVT_NOTIFY_ADD, dev);
	FUNC2();

	FUNC5(&clockevents_lock, flags);
}