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
struct Qdisc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __QDISC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct Qdisc*) ; 

void FUNC4(struct Qdisc *q)
{
	unsigned long start_time = jiffies;

	while (FUNC3(q)) {
		/*
		 * Postpone processing if
		 * 1. another process needs the CPU;
		 * 2. we've been doing it for too long.
		 */
		if (FUNC2() || jiffies != start_time) {
			FUNC0(q);
			break;
		}
	}

	FUNC1(__QDISC_STATE_RUNNING, &q->state);
}