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
struct perf_evsel {int /*<<< orphan*/  node; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct list_head* FUNC3 (int) ; 
 struct perf_evsel* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct list_head **listp, int *idx,
			  char *sys_name, char *evt_name)
{
	struct perf_evsel *evsel;
	struct list_head *list = *listp;

	if (!list) {
		list = FUNC3(sizeof(*list));
		if (!list)
			return -ENOMEM;
		FUNC0(list);
	}

	evsel = FUNC4(sys_name, evt_name, (*idx)++);
	if (!evsel) {
		FUNC1(list);
		return -ENOMEM;
	}

	FUNC2(&evsel->node, list);
	*listp = list;
	return 0;
}