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
struct siginfo {scalar_t__ si_sys_private; int /*<<< orphan*/  si_overrun; int /*<<< orphan*/  si_tid; } ;
struct k_itimer {scalar_t__ it_requeue_pending; scalar_t__ it_clock; scalar_t__ it_overrun_last; } ;

/* Variables and functions */
 struct k_itimer* FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct k_itimer*) ; 
 int /*<<< orphan*/  FUNC2 (struct k_itimer*) ; 
 int /*<<< orphan*/  FUNC3 (struct k_itimer*,unsigned long) ; 

void FUNC4(struct siginfo *info)
{
	struct k_itimer *timr;
	unsigned long flags;

	timr = FUNC0(info->si_tid, &flags);

	if (timr && timr->it_requeue_pending == info->si_sys_private) {
		if (timr->it_clock < 0)
			FUNC1(timr);
		else
			FUNC2(timr);

		info->si_overrun += timr->it_overrun_last;
	}

	if (timr)
		FUNC3(timr, flags);
}