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
struct task_struct {int dummy; } ;
struct freezer {int state; } ;
struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;
typedef  enum freezer_state { ____Placeholder_freezer_state } freezer_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CGROUP_FREEZING ; 
 int CGROUP_FROZEN ; 
 int CGROUP_THAWED ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*,struct cgroup_iter*) ; 
 struct task_struct* FUNC2 (struct cgroup*,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*,struct cgroup_iter*) ; 
 scalar_t__ FUNC4 (struct task_struct*) ; 

__attribute__((used)) static void FUNC5(struct cgroup *cgroup,
				 struct freezer *freezer)
{
	struct cgroup_iter it;
	struct task_struct *task;
	unsigned int nfrozen = 0, ntotal = 0;
	enum freezer_state old_state = freezer->state;

	FUNC3(cgroup, &it);
	while ((task = FUNC2(cgroup, &it))) {
		ntotal++;
		if (FUNC4(task))
			nfrozen++;
	}

	if (old_state == CGROUP_THAWED) {
		FUNC0(nfrozen > 0);
	} else if (old_state == CGROUP_FREEZING) {
		if (nfrozen == ntotal)
			freezer->state = CGROUP_FROZEN;
	} else { /* old_state == CGROUP_FROZEN */
		FUNC0(nfrozen != ntotal);
	}

	FUNC1(cgroup, &it);
}