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
struct tvec_base {int /*<<< orphan*/  lock; int /*<<< orphan*/  next_timer; } ;
struct timer_list {int /*<<< orphan*/  expires; int /*<<< orphan*/  base; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tvec_base*,struct timer_list*) ; 
 struct tvec_base* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct timer_list*,struct tvec_base*) ; 
 int /*<<< orphan*/  FUNC10 (struct timer_list*) ; 
 int /*<<< orphan*/  tvec_bases ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(struct timer_list *timer, int cpu)
{
	struct tvec_base *base = FUNC3(tvec_bases, cpu);
	unsigned long flags;

	FUNC10(timer);
	FUNC0(FUNC8(timer) || !timer->function);
	FUNC4(&base->lock, flags);
	FUNC9(timer, base);
	FUNC1(timer, timer->expires);
	if (FUNC7(timer->expires, base->next_timer) &&
	    !FUNC6(timer->base))
		base->next_timer = timer->expires;
	FUNC2(base, timer);
	/*
	 * Check whether the other CPU is idle and needs to be
	 * triggered to reevaluate the timer wheel when nohz is
	 * active. We are protected against the other CPU fiddling
	 * with the timer by holding the timer base lock. This also
	 * makes sure that a CPU on the way to idle can not evaluate
	 * the timer wheel.
	 */
	FUNC11(cpu);
	FUNC5(&base->lock, flags);
}