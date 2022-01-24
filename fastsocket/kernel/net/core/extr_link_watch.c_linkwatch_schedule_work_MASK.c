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

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  LW_URGENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  linkwatch_flags ; 
 unsigned long linkwatch_nextevent ; 
 int /*<<< orphan*/  linkwatch_work ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(int urgent)
{
	unsigned long delay = linkwatch_nextevent - jiffies;

	if (FUNC3(LW_URGENT, &linkwatch_flags))
		return;

	/* Minimise down-time: drop delay for up event. */
	if (urgent) {
		if (FUNC2(LW_URGENT, &linkwatch_flags))
			return;
		delay = 0;
	}

	/* If we wrap around we'll delay it by at most HZ. */
	if (delay > HZ)
		delay = 0;

	/*
	 * This is true if we've scheduled it immeditately or if we don't
	 * need an immediate execution and it's already pending.
	 */
	if (FUNC1(&linkwatch_work, delay) == !delay)
		return;

	/* Don't bother if there is nothing urgent. */
	if (!FUNC3(LW_URGENT, &linkwatch_flags))
		return;

	/* It's already running which is good enough. */
	if (!FUNC0(&linkwatch_work))
		return;

	/* Otherwise we reschedule it again for immediate exection. */
	FUNC1(&linkwatch_work, 0);
}