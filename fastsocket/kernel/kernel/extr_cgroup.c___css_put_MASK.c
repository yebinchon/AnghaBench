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
struct cgroup_subsys_state {int /*<<< orphan*/  refcnt; struct cgroup* cgroup; } ;
struct cgroup {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_RELEASABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 scalar_t__ FUNC4 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct cgroup_subsys_state *css, int count)
{
	struct cgroup *cgrp = css->cgroup;
	int val;
	FUNC5();
	val = FUNC1(count, &css->refcnt);
	if (val == 1) {
		if (FUNC4(cgrp)) {
			FUNC7(CGRP_RELEASABLE, &cgrp->flags);
			FUNC3(cgrp);
		}
		FUNC2(cgrp);
	}
	FUNC6();
	FUNC0(val < 1);
}