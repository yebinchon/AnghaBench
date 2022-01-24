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
typedef  int /*<<< orphan*/  u64 ;
struct perf_evsel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HARDWARE ; 
 int /*<<< orphan*/  HW_BRANCH_INSTRUCTIONS ; 
 int /*<<< orphan*/  HW_CACHE ; 
 int /*<<< orphan*/  HW_CACHE_DTLB ; 
 int /*<<< orphan*/  HW_CACHE_ITLB ; 
 int /*<<< orphan*/  HW_CACHE_L1D ; 
 int /*<<< orphan*/  HW_CACHE_L1I ; 
 int /*<<< orphan*/  HW_CACHE_LL ; 
 int /*<<< orphan*/  HW_CACHE_REFERENCES ; 
 int /*<<< orphan*/  HW_CPU_CYCLES ; 
 int /*<<< orphan*/  HW_STALLED_CYCLES_BACKEND ; 
 int /*<<< orphan*/  HW_STALLED_CYCLES_FRONTEND ; 
 int /*<<< orphan*/  SOFTWARE ; 
 int /*<<< orphan*/  SW_TASK_CLOCK ; 
 scalar_t__ FUNC0 (struct perf_evsel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * runtime_branches_stats ; 
 int /*<<< orphan*/ * runtime_cacherefs_stats ; 
 int /*<<< orphan*/ * runtime_cycles_stats ; 
 int /*<<< orphan*/ * runtime_dtlb_cache_stats ; 
 int /*<<< orphan*/ * runtime_itlb_cache_stats ; 
 int /*<<< orphan*/ * runtime_l1_dcache_stats ; 
 int /*<<< orphan*/ * runtime_l1_icache_stats ; 
 int /*<<< orphan*/ * runtime_ll_cache_stats ; 
 int /*<<< orphan*/ * runtime_nsecs_stats ; 
 int /*<<< orphan*/ * runtime_stalled_cycles_back_stats ; 
 int /*<<< orphan*/ * runtime_stalled_cycles_front_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct perf_evsel *counter, u64 *count)
{
	if (FUNC0(counter, SOFTWARE, SW_TASK_CLOCK))
		FUNC1(&runtime_nsecs_stats[0], count[0]);
	else if (FUNC0(counter, HARDWARE, HW_CPU_CYCLES))
		FUNC1(&runtime_cycles_stats[0], count[0]);
	else if (FUNC0(counter, HARDWARE, HW_STALLED_CYCLES_FRONTEND))
		FUNC1(&runtime_stalled_cycles_front_stats[0], count[0]);
	else if (FUNC0(counter, HARDWARE, HW_STALLED_CYCLES_BACKEND))
		FUNC1(&runtime_stalled_cycles_back_stats[0], count[0]);
	else if (FUNC0(counter, HARDWARE, HW_BRANCH_INSTRUCTIONS))
		FUNC1(&runtime_branches_stats[0], count[0]);
	else if (FUNC0(counter, HARDWARE, HW_CACHE_REFERENCES))
		FUNC1(&runtime_cacherefs_stats[0], count[0]);
	else if (FUNC0(counter, HW_CACHE, HW_CACHE_L1D))
		FUNC1(&runtime_l1_dcache_stats[0], count[0]);
	else if (FUNC0(counter, HW_CACHE, HW_CACHE_L1I))
		FUNC1(&runtime_l1_icache_stats[0], count[0]);
	else if (FUNC0(counter, HW_CACHE, HW_CACHE_LL))
		FUNC1(&runtime_ll_cache_stats[0], count[0]);
	else if (FUNC0(counter, HW_CACHE, HW_CACHE_DTLB))
		FUNC1(&runtime_dtlb_cache_stats[0], count[0]);
	else if (FUNC0(counter, HW_CACHE, HW_CACHE_ITLB))
		FUNC1(&runtime_itlb_cache_stats[0], count[0]);
}