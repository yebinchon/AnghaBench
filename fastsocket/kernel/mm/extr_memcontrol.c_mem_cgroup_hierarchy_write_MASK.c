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
typedef  int u64 ;
struct mem_cgroup {int use_hierarchy; } ;
struct cgroup {int /*<<< orphan*/  children; struct cgroup* parent; } ;
struct cftype {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup* FUNC3 (struct cgroup*) ; 

__attribute__((used)) static int FUNC4(struct cgroup *cont, struct cftype *cft,
					u64 val)
{
	int retval = 0;
	struct mem_cgroup *mem = FUNC3(cont);
	struct cgroup *parent = cont->parent;
	struct mem_cgroup *parent_mem = NULL;

	if (parent)
		parent_mem = FUNC3(parent);

	FUNC0();
	/*
	 * If parent's use_hiearchy is set, we can't make any modifications
	 * in the child subtrees. If it is unset, then the change can
	 * occur, provided the current cgroup has no children.
	 *
	 * For the root cgroup, parent_mem is NULL, we allow value to be
	 * set if there are no children.
	 */
	if ((!parent_mem || !parent_mem->use_hierarchy) &&
				(val == 1 || val == 0)) {
		if (FUNC2(&cont->children))
			mem->use_hierarchy = val;
		else
			retval = -EBUSY;
	} else
		retval = -EINVAL;
	FUNC1();

	return retval;
}