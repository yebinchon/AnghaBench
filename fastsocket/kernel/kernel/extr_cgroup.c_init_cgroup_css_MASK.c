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
struct cgroup_subsys_state {scalar_t__ flags; int /*<<< orphan*/ * id; int /*<<< orphan*/  refcnt; struct cgroup* cgroup; } ;
struct cgroup_subsys {size_t subsys_id; } ;
struct cgroup {struct cgroup_subsys_state** subsys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  CSS_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct cgroup* dummytop ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct cgroup_subsys_state *css,
			       struct cgroup_subsys *ss,
			       struct cgroup *cgrp)
{
	css->cgroup = cgrp;
	FUNC1(&css->refcnt, 1);
	css->flags = 0;
	css->id = NULL;
	if (cgrp == dummytop)
		FUNC2(CSS_ROOT, &css->flags);
	FUNC0(cgrp->subsys[ss->subsys_id]);
	cgrp->subsys[ss->subsys_id] = css;
}