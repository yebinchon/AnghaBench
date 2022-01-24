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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  (* tmr_restart ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned long curr_ticks ; 
 int /*<<< orphan*/  lock ; 
 unsigned long next_event_time ; 
 int /*<<< orphan*/  opened ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long ticks_offs ; 
 TYPE_1__* tmr ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tmr_ctr ; 
 int /*<<< orphan*/  tmr_running ; 

void FUNC5(void)
{
	unsigned long flags;
	
	if (!opened)
		return;

	tmr->tmr_restart(tmr->dev);

	if (!tmr_running)
		return;

	FUNC1(&lock,flags);
	tmr_ctr++;
	curr_ticks = ticks_offs + FUNC4(tmr_ctr);

	if (curr_ticks >= next_event_time)
	{
		next_event_time = (unsigned long) -1;
		FUNC0(0);
	}
	FUNC2(&lock,flags);
}