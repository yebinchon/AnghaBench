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
struct tvec_base {scalar_t__ next_timer; scalar_t__ timer_jiffies; int /*<<< orphan*/  lock; } ;
struct timer_list {scalar_t__ expires; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer_list*,int) ; 
 struct tvec_base* FUNC1 (struct timer_list*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct timer_list*) ; 

int FUNC6(struct timer_list *timer)
{
	struct tvec_base *base;
	unsigned long flags;
	int ret = 0;

	FUNC5(timer);
	if (FUNC4(timer)) {
		base = FUNC1(timer, &flags);
		if (FUNC4(timer)) {
			FUNC0(timer, 1);
			if (timer->expires == base->next_timer &&
			    !FUNC3(timer->base))
				base->next_timer = base->timer_jiffies;
			ret = 1;
		}
		FUNC2(&base->lock, flags);
	}

	return ret;
}