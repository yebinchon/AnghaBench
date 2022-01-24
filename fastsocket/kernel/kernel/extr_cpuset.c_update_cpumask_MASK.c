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
struct cpuset {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  callback_mutex ; 
 int /*<<< orphan*/  cpu_active_mask ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ptr_heap*) ; 
 int FUNC7 (struct ptr_heap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cpuset top_cpuset ; 
 int /*<<< orphan*/  FUNC11 (struct cpuset*,struct ptr_heap*) ; 
 int FUNC12 (struct cpuset*,struct cpuset*) ; 

__attribute__((used)) static int FUNC13(struct cpuset *cs, struct cpuset *trialcs,
			  const char *buf)
{
	struct ptr_heap heap;
	int retval;
	int is_load_balanced;

	/* top_cpuset.cpus_allowed tracks cpu_online_map; it's read-only */
	if (cs == &top_cpuset)
		return -EACCES;

	/*
	 * An empty cpus_allowed is ok only if the cpuset has no tasks.
	 * Since cpulist_parse() fails on an empty mask, we special case
	 * that parsing.  The validate_change() call ensures that cpusets
	 * with tasks have cpus.
	 */
	if (!*buf) {
		FUNC2(trialcs->cpus_allowed);
	} else {
		retval = FUNC1(buf, trialcs->cpus_allowed);
		if (retval < 0)
			return retval;

		if (!FUNC5(trialcs->cpus_allowed, cpu_active_mask))
			return -EINVAL;
	}
	retval = FUNC12(cs, trialcs);
	if (retval < 0)
		return retval;

	/* Nothing to do if the cpus didn't change */
	if (FUNC4(cs->cpus_allowed, trialcs->cpus_allowed))
		return 0;

	retval = FUNC7(&heap, PAGE_SIZE, GFP_KERNEL, NULL);
	if (retval)
		return retval;

	is_load_balanced = FUNC8(trialcs);

	FUNC9(&callback_mutex);
	FUNC3(cs->cpus_allowed, trialcs->cpus_allowed);
	FUNC10(&callback_mutex);

	/*
	 * Scan tasks in the cpuset, and update the cpumasks of any
	 * that need an update.
	 */
	FUNC11(cs, &heap);

	FUNC6(&heap);

	if (is_load_balanced)
		FUNC0();
	return 0;
}