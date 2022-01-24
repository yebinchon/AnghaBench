#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hrtimer_clock_base {int /*<<< orphan*/  active; TYPE_4__* cpu_base; int /*<<< orphan*/  offset; int /*<<< orphan*/ * first; } ;
struct hrtimer {int state; int /*<<< orphan*/  node; } ;
struct TYPE_6__ {scalar_t__ tv64; } ;
typedef  TYPE_2__ ktime_t ;
struct TYPE_5__ {scalar_t__ tv64; } ;
struct TYPE_7__ {TYPE_1__ expires_next; } ;

/* Variables and functions */
 int HRTIMER_STATE_ENQUEUED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hrtimer *timer,
			     struct hrtimer_clock_base *base,
			     unsigned long newstate, int reprogram)
{
	if (!(timer->state & HRTIMER_STATE_ENQUEUED))
		goto out;

	/*
	 * Remove the timer from the rbtree and replace the first
	 * entry pointer if necessary.
	 */
	if (base->first == &timer->node) {
		base->first = FUNC5(&timer->node);
#ifdef CONFIG_HIGH_RES_TIMERS
		/* Reprogram the clock event device. if enabled */
		if (reprogram && hrtimer_hres_active()) {
			ktime_t expires;

			expires = ktime_sub(hrtimer_get_expires(timer),
					    base->offset);
			if (base->cpu_base->expires_next.tv64 == expires.tv64)
				hrtimer_force_reprogram(base->cpu_base, 1);
		}
#endif
	}
	FUNC4(&timer->node, &base->active);
out:
	timer->state = newstate;
}