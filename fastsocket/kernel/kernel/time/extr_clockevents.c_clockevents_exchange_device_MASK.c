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
struct clock_event_device {scalar_t__ mode; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CLOCK_EVT_MODE_UNUSED ; 
 int /*<<< orphan*/  clockevents_released ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

void FUNC7(struct clock_event_device *old,
				 struct clock_event_device *new)
{
	unsigned long flags;

	FUNC6(flags);
	/*
	 * Caller releases a clock event device. We queue it into the
	 * released list and do a notify add later.
	 */
	if (old) {
		FUNC1(old, CLOCK_EVT_MODE_UNUSED);
		FUNC4(&old->list);
		FUNC3(&old->list, &clockevents_released);
	}

	if (new) {
		FUNC0(new->mode != CLOCK_EVT_MODE_UNUSED);
		FUNC2(new);
	}
	FUNC5(flags);
}