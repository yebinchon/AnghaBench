#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_evsel {TYPE_1__* cgrp; } ;
struct TYPE_4__ {int /*<<< orphan*/ * map; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOFTWARE ; 
 int /*<<< orphan*/  SW_TASK_CLOCK ; 
 double FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ csv_output ; 
 char* csv_sep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ no_aggr ; 
 int /*<<< orphan*/  output ; 
 TYPE_2__* FUNC2 (struct perf_evsel*) ; 
 scalar_t__ FUNC3 (struct perf_evsel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  walltime_nsecs_stats ; 

__attribute__((used)) static void FUNC6(int cpu, struct perf_evsel *evsel, double avg)
{
	double msecs = avg / 1e6;
	char cpustr[16] = { '\0', };
	const char *fmt = csv_output ? "%s%.6f%s%s" : "%s%18.6f%s%-25s";

	if (no_aggr)
		FUNC5(cpustr, "CPU%*d%s",
			csv_output ? 0 : -4,
			FUNC2(evsel)->map[cpu], csv_sep);

	FUNC1(output, fmt, cpustr, msecs, csv_sep, FUNC4(evsel));

	if (evsel->cgrp)
		FUNC1(output, "%s%d", csv_sep, evsel->cgrp->name);

	if (csv_output)
		return;

	if (FUNC3(evsel, SOFTWARE, SW_TASK_CLOCK))
		FUNC1(output, " # %8.3f CPUs utilized          ",
			avg / FUNC0(&walltime_nsecs_stats));
	else
		FUNC1(output, "                                   ");
}