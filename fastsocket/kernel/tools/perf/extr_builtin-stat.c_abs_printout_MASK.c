#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ type; int config; } ;
struct perf_evsel {TYPE_2__ attr; TYPE_1__* cgrp; } ;
struct TYPE_25__ {scalar_t__ n; } ;
struct TYPE_24__ {scalar_t__ n; } ;
struct TYPE_23__ {scalar_t__ n; } ;
struct TYPE_22__ {scalar_t__ n; } ;
struct TYPE_21__ {scalar_t__ n; } ;
struct TYPE_19__ {int /*<<< orphan*/  name; } ;
struct TYPE_18__ {int /*<<< orphan*/ * map; } ;
struct TYPE_17__ {scalar_t__ n; } ;
struct TYPE_16__ {scalar_t__ n; } ;

/* Variables and functions */
 int /*<<< orphan*/  HARDWARE ; 
 int /*<<< orphan*/  HW_BRANCH_MISSES ; 
 int /*<<< orphan*/  HW_CACHE_MISSES ; 
 int /*<<< orphan*/  HW_CPU_CYCLES ; 
 int /*<<< orphan*/  HW_INSTRUCTIONS ; 
 int /*<<< orphan*/  HW_STALLED_CYCLES_BACKEND ; 
 int /*<<< orphan*/  HW_STALLED_CYCLES_FRONTEND ; 
 int PERF_COUNT_HW_CACHE_DTLB ; 
 int PERF_COUNT_HW_CACHE_ITLB ; 
 int PERF_COUNT_HW_CACHE_L1D ; 
 int PERF_COUNT_HW_CACHE_L1I ; 
 int PERF_COUNT_HW_CACHE_LL ; 
 int PERF_COUNT_HW_CACHE_OP_READ ; 
 int PERF_COUNT_HW_CACHE_RESULT_MISS ; 
 scalar_t__ PERF_TYPE_HW_CACHE ; 
 double FUNC0 (TYPE_3__*) ; 
 scalar_t__ big_num ; 
 scalar_t__ csv_output ; 
 char* csv_sep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 double FUNC2 (double,double) ; 
 scalar_t__ no_aggr ; 
 int /*<<< orphan*/  output ; 
 TYPE_14__* FUNC3 (struct perf_evsel*) ; 
 scalar_t__ FUNC4 (struct perf_evsel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct perf_evsel*,double) ; 
 int /*<<< orphan*/  FUNC7 (int,struct perf_evsel*,double) ; 
 int /*<<< orphan*/  FUNC8 (int,struct perf_evsel*,double) ; 
 int /*<<< orphan*/  FUNC9 (int,struct perf_evsel*,double) ; 
 int /*<<< orphan*/  FUNC10 (int,struct perf_evsel*,double) ; 
 int /*<<< orphan*/  FUNC11 (int,struct perf_evsel*,double) ; 
 int /*<<< orphan*/  FUNC12 (int,struct perf_evsel*,double) ; 
 int /*<<< orphan*/  FUNC13 (int,struct perf_evsel*,double) ; 
 TYPE_13__* runtime_branches_stats ; 
 TYPE_3__* runtime_cacherefs_stats ; 
 TYPE_3__* runtime_cycles_stats ; 
 TYPE_10__* runtime_dtlb_cache_stats ; 
 TYPE_9__* runtime_itlb_cache_stats ; 
 TYPE_8__* runtime_l1_dcache_stats ; 
 TYPE_7__* runtime_l1_icache_stats ; 
 TYPE_6__* runtime_ll_cache_stats ; 
 TYPE_3__* runtime_nsecs_stats ; 
 TYPE_3__* runtime_stalled_cycles_back_stats ; 
 TYPE_3__* runtime_stalled_cycles_front_stats ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC15(int cpu, struct perf_evsel *evsel, double avg)
{
	double total, ratio = 0.0;
	char cpustr[16] = { '\0', };
	const char *fmt;

	if (csv_output)
		fmt = "%s%.0f%s%s";
	else if (big_num)
		fmt = "%s%'18.0f%s%-25s";
	else
		fmt = "%s%18.0f%s%-25s";

	if (no_aggr)
		FUNC14(cpustr, "CPU%*d%s",
			csv_output ? 0 : -4,
			FUNC3(evsel)->map[cpu], csv_sep);
	else
		cpu = 0;

	FUNC1(output, fmt, cpustr, avg, csv_sep, FUNC5(evsel));

	if (evsel->cgrp)
		FUNC1(output, "%s%d", csv_sep, evsel->cgrp->name);

	if (csv_output)
		return;

	if (FUNC4(evsel, HARDWARE, HW_INSTRUCTIONS)) {
		total = FUNC0(&runtime_cycles_stats[cpu]);

		if (total)
			ratio = avg / total;

		FUNC1(output, " #   %5.2f  insns per cycle        ", ratio);

		total = FUNC0(&runtime_stalled_cycles_front_stats[cpu]);
		total = FUNC2(total, FUNC0(&runtime_stalled_cycles_back_stats[cpu]));

		if (total && avg) {
			ratio = total / avg;
			FUNC1(output, "\n                                             #   %5.2f  stalled cycles per insn", ratio);
		}

	} else if (FUNC4(evsel, HARDWARE, HW_BRANCH_MISSES) &&
			runtime_branches_stats[cpu].n != 0) {
		FUNC6(cpu, evsel, avg);
	} else if (
		evsel->attr.type == PERF_TYPE_HW_CACHE &&
		evsel->attr.config ==  ( PERF_COUNT_HW_CACHE_L1D |
					((PERF_COUNT_HW_CACHE_OP_READ) << 8) |
					((PERF_COUNT_HW_CACHE_RESULT_MISS) << 16)) &&
			runtime_l1_dcache_stats[cpu].n != 0) {
		FUNC9(cpu, evsel, avg);
	} else if (
		evsel->attr.type == PERF_TYPE_HW_CACHE &&
		evsel->attr.config ==  ( PERF_COUNT_HW_CACHE_L1I |
					((PERF_COUNT_HW_CACHE_OP_READ) << 8) |
					((PERF_COUNT_HW_CACHE_RESULT_MISS) << 16)) &&
			runtime_l1_icache_stats[cpu].n != 0) {
		FUNC10(cpu, evsel, avg);
	} else if (
		evsel->attr.type == PERF_TYPE_HW_CACHE &&
		evsel->attr.config ==  ( PERF_COUNT_HW_CACHE_DTLB |
					((PERF_COUNT_HW_CACHE_OP_READ) << 8) |
					((PERF_COUNT_HW_CACHE_RESULT_MISS) << 16)) &&
			runtime_dtlb_cache_stats[cpu].n != 0) {
		FUNC7(cpu, evsel, avg);
	} else if (
		evsel->attr.type == PERF_TYPE_HW_CACHE &&
		evsel->attr.config ==  ( PERF_COUNT_HW_CACHE_ITLB |
					((PERF_COUNT_HW_CACHE_OP_READ) << 8) |
					((PERF_COUNT_HW_CACHE_RESULT_MISS) << 16)) &&
			runtime_itlb_cache_stats[cpu].n != 0) {
		FUNC8(cpu, evsel, avg);
	} else if (
		evsel->attr.type == PERF_TYPE_HW_CACHE &&
		evsel->attr.config ==  ( PERF_COUNT_HW_CACHE_LL |
					((PERF_COUNT_HW_CACHE_OP_READ) << 8) |
					((PERF_COUNT_HW_CACHE_RESULT_MISS) << 16)) &&
			runtime_ll_cache_stats[cpu].n != 0) {
		FUNC11(cpu, evsel, avg);
	} else if (FUNC4(evsel, HARDWARE, HW_CACHE_MISSES) &&
			runtime_cacherefs_stats[cpu].n != 0) {
		total = FUNC0(&runtime_cacherefs_stats[cpu]);

		if (total)
			ratio = avg * 100 / total;

		FUNC1(output, " # %8.3f %% of all cache refs    ", ratio);

	} else if (FUNC4(evsel, HARDWARE, HW_STALLED_CYCLES_FRONTEND)) {
		FUNC13(cpu, evsel, avg);
	} else if (FUNC4(evsel, HARDWARE, HW_STALLED_CYCLES_BACKEND)) {
		FUNC12(cpu, evsel, avg);
	} else if (FUNC4(evsel, HARDWARE, HW_CPU_CYCLES)) {
		total = FUNC0(&runtime_nsecs_stats[cpu]);

		if (total)
			ratio = 1.0 * avg / total;

		FUNC1(output, " # %8.3f GHz                    ", ratio);
	} else if (runtime_nsecs_stats[cpu].n != 0) {
		char unit = 'M';

		total = FUNC0(&runtime_nsecs_stats[cpu]);

		if (total)
			ratio = 1000.0 * avg / total;
		if (ratio < 0.001) {
			ratio *= 1000;
			unit = 'K';
		}

		FUNC1(output, " # %8.3f %c/sec                  ", ratio, unit);
	} else {
		FUNC1(output, "                                   ");
	}
}