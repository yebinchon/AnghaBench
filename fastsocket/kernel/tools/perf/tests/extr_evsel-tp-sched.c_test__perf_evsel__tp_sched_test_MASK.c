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
struct perf_evsel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_evsel*) ; 
 struct perf_evsel* FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct perf_evsel*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(void)
{
	struct perf_evsel *evsel = FUNC1("sched", "sched_switch", 0);
	int ret = 0;

	if (evsel == NULL) {
		FUNC3("perf_evsel__new\n");
		return -1;
	}

	if (FUNC2(evsel, "prev_comm", 16, true))
		ret = -1;

	if (FUNC2(evsel, "prev_pid", 4, true))
		ret = -1;

	if (FUNC2(evsel, "prev_prio", 4, true))
		ret = -1;

	if (FUNC2(evsel, "prev_state", sizeof(long), true))
		ret = -1;

	if (FUNC2(evsel, "next_comm", 16, true))
		ret = -1;

	if (FUNC2(evsel, "next_pid", 4, true))
		ret = -1;

	if (FUNC2(evsel, "next_prio", 4, true))
		ret = -1;

	FUNC0(evsel);

	evsel = FUNC1("sched", "sched_wakeup", 0);

	if (FUNC2(evsel, "comm", 16, true))
		ret = -1;

	if (FUNC2(evsel, "pid", 4, true))
		ret = -1;

	if (FUNC2(evsel, "prio", 4, true))
		ret = -1;

	if (FUNC2(evsel, "success", 4, true))
		ret = -1;

	if (FUNC2(evsel, "target_cpu", 4, true))
		ret = -1;

	return ret;
}