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
struct task_struct {struct css_set* cgroups; int /*<<< orphan*/  cg_list; } ;
struct css_set {int /*<<< orphan*/ * subsys; } ;
struct cgroup_subsys {int /*<<< orphan*/  (* exit ) (struct cgroup_subsys*,struct cgroup*,struct cgroup*,struct task_struct*) ;} ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup* cgroup; } ;

/* Variables and functions */
 int CGROUP_SUBSYS_COUNT ; 
 int /*<<< orphan*/  css_set_lock ; 
 struct css_set init_css_set ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ need_forkexit_callback ; 
 int /*<<< orphan*/  FUNC2 (struct css_set*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup_subsys*,struct cgroup*,struct cgroup*,struct task_struct*) ; 
 struct cgroup_subsys** subsys ; 
 struct cgroup* FUNC5 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct task_struct *tsk, int run_callbacks)
{
	int i;
	struct css_set *cg;


	/*
	 * Unlink from the css_set task list if necessary.
	 * Optimistically check cg_list before taking
	 * css_set_lock
	 */
	if (!FUNC1(&tsk->cg_list)) {
		FUNC8(&css_set_lock);
		if (!FUNC1(&tsk->cg_list))
			FUNC0(&tsk->cg_list);
		FUNC9(&css_set_lock);
	}

	/* Reassign the task to the init_css_set. */
	FUNC6(tsk);
	cg = tsk->cgroups;
	tsk->cgroups = &init_css_set;

	if (run_callbacks && need_forkexit_callback) {
		/*
		 * modular subsystems can't use callbacks, so no need to lock
		 * the subsys array
		 */
		for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
			struct cgroup_subsys *ss = subsys[i];
			if (ss->exit) {
				struct cgroup *old_cgrp =
					FUNC3(cg->subsys[i])->cgroup;
				struct cgroup *cgrp = FUNC5(tsk, i);
				ss->exit(ss, cgrp, old_cgrp, tsk);
			}
		}
	}
	FUNC7(tsk);

	if (cg)
		FUNC2(cg);
}