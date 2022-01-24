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
 int /*<<< orphan*/  CPU_PROFILING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int tick_do_timer_cpu ; 
 int /*<<< orphan*/  tick_next_period ; 
 int /*<<< orphan*/  tick_period ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xtime_lock ; 

__attribute__((used)) static void FUNC8(int cpu)
{
	if (tick_do_timer_cpu == cpu) {
		FUNC6(&xtime_lock);

		/* Keep track of the next tick event */
		tick_next_period = FUNC2(tick_next_period, tick_period);

		FUNC0(1);
		FUNC7(&xtime_lock);
	}

	FUNC4(FUNC5(FUNC1()));
	FUNC3(CPU_PROFILING);
}