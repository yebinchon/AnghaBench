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
struct ptr_heap {int dummy; } ;
struct cpuset {int /*<<< orphan*/  mems_allowed; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t N_HIGH_MEMORY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  callback_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct ptr_heap*) ; 
 int FUNC1 (struct ptr_heap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * node_states ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpuset top_cpuset ; 
 int /*<<< orphan*/  FUNC8 (struct cpuset*,int /*<<< orphan*/ *,struct ptr_heap*) ; 
 int FUNC9 (struct cpuset*,struct cpuset*) ; 

__attribute__((used)) static int FUNC10(struct cpuset *cs, struct cpuset *trialcs,
			   const char *buf)
{
	nodemask_t oldmem;
	int retval;
	struct ptr_heap heap;

	/*
	 * top_cpuset.mems_allowed tracks node_stats[N_HIGH_MEMORY];
	 * it's read-only
	 */
	if (cs == &top_cpuset)
		return -EACCES;

	/*
	 * An empty mems_allowed is ok iff there are no tasks in the cpuset.
	 * Since nodelist_parse() fails on an empty mask, we special case
	 * that parsing.  The validate_change() call ensures that cpusets
	 * with tasks have memory.
	 */
	if (!*buf) {
		FUNC5(trialcs->mems_allowed);
	} else {
		retval = FUNC4(buf, trialcs->mems_allowed);
		if (retval < 0)
			goto done;

		if (!FUNC7(trialcs->mems_allowed,
				node_states[N_HIGH_MEMORY]))
			return -EINVAL;
	}
	oldmem = cs->mems_allowed;
	if (FUNC6(oldmem, trialcs->mems_allowed)) {
		retval = 0;		/* Too easy - nothing to do */
		goto done;
	}
	retval = FUNC9(cs, trialcs);
	if (retval < 0)
		goto done;

	retval = FUNC1(&heap, PAGE_SIZE, GFP_KERNEL, NULL);
	if (retval < 0)
		goto done;

	FUNC2(&callback_mutex);
	cs->mems_allowed = trialcs->mems_allowed;
	FUNC3(&callback_mutex);

	FUNC8(cs, &oldmem, &heap);

	FUNC0(&heap);
done:
	return retval;
}