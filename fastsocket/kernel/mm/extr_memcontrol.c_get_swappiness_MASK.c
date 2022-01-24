#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct cgroup* cgroup; } ;
struct mem_cgroup {unsigned int swappiness; int /*<<< orphan*/  reclaim_param_lock; TYPE_1__ css; } ;
struct cgroup {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int vm_swappiness ; 

__attribute__((used)) static unsigned int FUNC2(struct mem_cgroup *memcg)
{
	struct cgroup *cgrp = memcg->css.cgroup;
	unsigned int swappiness;

	/* root ? */
	if (cgrp->parent == NULL)
		return vm_swappiness;

	FUNC0(&memcg->reclaim_param_lock);
	swappiness = memcg->swappiness;
	FUNC1(&memcg->reclaim_param_lock);

	return swappiness;
}