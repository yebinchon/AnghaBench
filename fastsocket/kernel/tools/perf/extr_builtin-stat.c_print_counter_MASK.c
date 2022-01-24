#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  double u64 ;
struct perf_evsel {TYPE_3__* cgrp; scalar_t__ supported; TYPE_2__* counts; } ;
struct TYPE_8__ {char** map; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__* cpu; } ;
struct TYPE_5__ {double val; double ena; double run; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR_NOT_COUNTED ; 
 int /*<<< orphan*/  CNTR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int,struct perf_evsel*,double) ; 
 scalar_t__ csv_output ; 
 char* csv_sep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct perf_evsel*,double) ; 
 int /*<<< orphan*/  output ; 
 TYPE_4__* FUNC5 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_evsel*) ; 
 int FUNC7 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_evsel*,double) ; 

__attribute__((used)) static void FUNC9(struct perf_evsel *counter)
{
	u64 ena, run, val;
	int cpu;

	for (cpu = 0; cpu < FUNC7(counter); cpu++) {
		val = counter->counts->cpu[cpu].val;
		ena = counter->counts->cpu[cpu].ena;
		run = counter->counts->cpu[cpu].run;
		if (run == 0 || ena == 0) {
			FUNC1(output, "CPU%*s%s%*d%s%*d",
				csv_output ? 0 : -4,
				FUNC5(counter)->map[cpu], csv_sep,
				csv_output ? 0 : 18,
				counter->supported ? CNTR_NOT_COUNTED : CNTR_NOT_SUPPORTED,
				csv_sep,
				csv_output ? 0 : -24,
				FUNC6(counter));

			if (counter->cgrp)
				FUNC1(output, "%s%d",
					csv_sep, counter->cgrp->name);

			FUNC2('\n', output);
			continue;
		}

		if (FUNC3(counter))
			FUNC4(cpu, counter, val);
		else
			FUNC0(cpu, counter, val);

		if (!csv_output) {
			FUNC8(counter, 1.0);

			if (run != ena)
				FUNC1(output, "  (%.2f%%)",
					100.0 * run / ena);
		}
		FUNC2('\n', output);
	}
}