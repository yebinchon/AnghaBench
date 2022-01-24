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
struct perf_sched {unsigned long replay_repeat; scalar_t__ nr_run_events_optimized; scalar_t__ multitarget_wakeups; scalar_t__ targetless_wakeups; int /*<<< orphan*/  nr_wakeup_events; int /*<<< orphan*/  nr_sleep_events; int /*<<< orphan*/  nr_run_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_sched*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_sched*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_sched*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_sched*) ; 
 scalar_t__ FUNC4 (struct perf_sched*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_sched*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_sched*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_sched*) ; 

__attribute__((used)) static int FUNC9(struct perf_sched *sched)
{
	unsigned long i;

	FUNC1(sched);
	FUNC2(sched);

	FUNC8(sched);

	if (FUNC4(sched, true, NULL))
		return -1;

	FUNC6("nr_run_events:        %ld\n", sched->nr_run_events);
	FUNC6("nr_sleep_events:      %ld\n", sched->nr_sleep_events);
	FUNC6("nr_wakeup_events:     %ld\n", sched->nr_wakeup_events);

	if (sched->targetless_wakeups)
		FUNC6("target-less wakeups:  %ld\n", sched->targetless_wakeups);
	if (sched->multitarget_wakeups)
		FUNC6("multi-target wakeups: %ld\n", sched->multitarget_wakeups);
	if (sched->nr_run_events_optimized)
		FUNC6("run atoms optimized: %ld\n",
			sched->nr_run_events_optimized);

	FUNC5(sched);
	FUNC0(sched);

	FUNC3(sched);
	FUNC6("------------------------------------------------------------\n");
	for (i = 0; i < sched->replay_repeat; i++)
		FUNC7(sched);

	return 0;
}