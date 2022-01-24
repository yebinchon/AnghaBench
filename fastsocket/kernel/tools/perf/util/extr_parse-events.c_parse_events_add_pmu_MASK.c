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
struct perf_pmu {int /*<<< orphan*/  cpus; } ;
struct perf_event_attr {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct list_head**,int*,struct perf_event_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_attr*,struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct perf_pmu*,struct list_head*) ; 
 scalar_t__ FUNC4 (struct perf_pmu*,struct perf_event_attr*,struct list_head*) ; 
 struct perf_pmu* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 

int FUNC7(struct list_head **list, int *idx,
			 char *name, struct list_head *head_config)
{
	struct perf_event_attr attr;
	struct perf_pmu *pmu;

	pmu = FUNC5(name);
	if (!pmu)
		return -EINVAL;

	FUNC2(&attr, 0, sizeof(attr));

	if (FUNC3(pmu, head_config))
		return -EINVAL;

	/*
	 * Configure hardcoded terms first, no need to check
	 * return value when called with fail == 0 ;)
	 */
	FUNC1(&attr, head_config, 0);

	if (FUNC4(pmu, &attr, head_config))
		return -EINVAL;

	return FUNC0(list, idx, &attr, FUNC6(head_config),
			   pmu->cpus);
}