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
struct test__event_st {int (* check ) (struct perf_evlist*) ;int /*<<< orphan*/  name; } ;
struct perf_evlist {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct perf_evlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_evlist*) ; 
 struct perf_evlist* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct perf_evlist*) ; 

__attribute__((used)) static int FUNC5(struct test__event_st *e)
{
	struct perf_evlist *evlist;
	int ret;

	evlist = FUNC2(NULL, NULL);
	if (evlist == NULL)
		return -ENOMEM;

	ret = FUNC0(evlist, e->name, 0);
	if (ret) {
		FUNC3("failed to parse event '%s', err %d\n",
			 e->name, ret);
		return ret;
	}

	ret = e->check(evlist);
	FUNC1(evlist);

	return ret;
}