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
struct perf_pmu {int dummy; } ;

/* Variables and functions */
 struct perf_pmu* FUNC0 (char*) ; 
 struct perf_pmu* FUNC1 (char*) ; 

struct perf_pmu *FUNC2(char *name)
{
	struct perf_pmu *pmu;

	/*
	 * Once PMU is loaded it stays in the list,
	 * so we keep us from multiple reading/parsing
	 * the pmu format definitions.
	 */
	pmu = FUNC0(name);
	if (pmu)
		return pmu;

	return FUNC1(name);
}