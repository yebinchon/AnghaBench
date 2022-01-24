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
struct mem_cgroup {int oom_kill_disable; scalar_t__ use_hierarchy; } ;
struct cgroup {int /*<<< orphan*/  children; struct cgroup* parent; } ;
struct cftype {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup* FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_cgroup*) ; 

__attribute__((used)) static int FUNC5(struct cgroup *cgrp,
	struct cftype *cft, u64 val)
{
	struct mem_cgroup *mem = FUNC3(cgrp);
	struct mem_cgroup *parent;

	/* cannot set to root cgroup and only 0 and 1 are allowed */
	if (!cgrp->parent || !((val == 0) || (val == 1)))
		return -EINVAL;

	parent = FUNC3(cgrp->parent);

	FUNC0();
	/* oom-kill-disable is a flag for subhierarchy. */
	if ((parent->use_hierarchy) ||
	    (mem->use_hierarchy && !FUNC2(&cgrp->children))) {
		FUNC1();
		return -EINVAL;
	}
	mem->oom_kill_disable = val;
	if (!val)
		FUNC4(mem);
	FUNC1();
	return 0;
}