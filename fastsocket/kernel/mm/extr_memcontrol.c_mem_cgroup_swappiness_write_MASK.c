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
struct mem_cgroup {int swappiness; int /*<<< orphan*/  reclaim_param_lock; scalar_t__ use_hierarchy; } ;
struct cgroup {int /*<<< orphan*/  children; struct cgroup* parent; } ;
struct cftype {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup* FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cgroup *cgrp, struct cftype *cft,
				       u64 val)
{
	struct mem_cgroup *memcg = FUNC3(cgrp);
	struct mem_cgroup *parent;

	if (val > 100)
		return -EINVAL;

	if (cgrp->parent == NULL)
		return -EINVAL;

	parent = FUNC3(cgrp->parent);

	FUNC0();

	/* If under hierarchy, only empty-root can set this value */
	if ((parent->use_hierarchy) ||
	    (memcg->use_hierarchy && !FUNC2(&cgrp->children))) {
		FUNC1();
		return -EINVAL;
	}

	FUNC4(&memcg->reclaim_param_lock);
	memcg->swappiness = val;
	FUNC5(&memcg->reclaim_param_lock);

	FUNC1();

	return 0;
}