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
struct perf_evsel {int /*<<< orphan*/  node; int /*<<< orphan*/  name; struct cpu_map* cpus; } ;
struct perf_event_attr {int dummy; } ;
struct list_head {int dummy; } ;
struct cpu_map {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct list_head* FUNC4 (int) ; 
 struct perf_evsel* FUNC5 (struct perf_event_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct list_head **_list, int *idx,
		       struct perf_event_attr *attr,
		       char *name, struct cpu_map *cpus)
{
	struct perf_evsel *evsel;
	struct list_head *list = *_list;

	if (!list) {
		list = FUNC4(sizeof(*list));
		if (!list)
			return -ENOMEM;
		FUNC0(list);
	}

	FUNC1(attr);

	evsel = FUNC5(attr, (*idx)++);
	if (!evsel) {
		FUNC2(list);
		return -ENOMEM;
	}

	evsel->cpus = cpus;
	if (name)
		evsel->name = FUNC6(name);
	FUNC3(&evsel->node, list);
	*_list = list;
	return 0;
}