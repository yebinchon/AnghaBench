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
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curr_clocks ; 
 unsigned long curr_ticks ; 
 unsigned long next_event_time ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_open ; 
 int /*<<< orphan*/  tmr_running ; 

__attribute__((used)) static void FUNC2(void)
{
	if (!timer_open)
		return;

	if (!tmr_running)
		return;

	curr_clocks++;
	curr_ticks = FUNC0(curr_clocks);

	if (curr_ticks >= next_event_time)
	{
		next_event_time = (unsigned long) -1;
		FUNC1(0);
	}
}