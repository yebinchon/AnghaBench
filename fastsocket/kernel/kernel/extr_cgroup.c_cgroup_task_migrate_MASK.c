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
struct task_struct {int flags; int /*<<< orphan*/  cg_list; struct css_set* cgroups; } ;
struct css_set {int /*<<< orphan*/  tasks; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cgroup {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CGROUP_SUBSYS_COUNT ; 
 int /*<<< orphan*/  CGRP_RELEASABLE ; 
 int ENOMEM ; 
 int ESRCH ; 
 int PF_EXITING ; 
 int /*<<< orphan*/  css_set_lock ; 
 struct css_set* FUNC1 (struct css_set*,struct cgroup*) ; 
 struct css_set* FUNC2 (struct css_set*,struct cgroup*,struct cgroup_subsys_state**) ; 
 int /*<<< orphan*/  FUNC3 (struct css_set*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct css_set*) ; 
 int /*<<< orphan*/  FUNC8 (struct css_set*,struct css_set*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct cgroup *cgrp, struct cgroup *oldcgrp,
			       struct task_struct *tsk, bool guarantee)
{
	struct css_set *oldcg;
	struct css_set *newcg;

	/*
	 * get old css_set. we need to take task_lock and refcount it, because
	 * an exiting task can change its css_set to init_css_set and drop its
	 * old one without taking cgroup_mutex.
	 */
	FUNC12(tsk);
	oldcg = tsk->cgroups;
	FUNC3(oldcg);
	FUNC13(tsk);

	/* locate or allocate a new css_set for this task. */
	if (guarantee) {
		/* we know the css_set we want already exists. */
		struct cgroup_subsys_state *template[CGROUP_SUBSYS_COUNT];
		FUNC9(&css_set_lock);
		newcg = FUNC2(oldcg, cgrp, template);
		FUNC0(!newcg);
		FUNC3(newcg);
		FUNC10(&css_set_lock);
	} else {
		FUNC6();
		/* find_css_set will give us newcg already referenced. */
		newcg = FUNC1(oldcg, cgrp);
		if (!newcg) {
			FUNC7(oldcg);
			return -ENOMEM;
		}
	}
	FUNC7(oldcg);

	/* if PF_EXITING is set, the tsk->cgroups pointer is no longer safe. */
	FUNC12(tsk);
	if (tsk->flags & PF_EXITING) {
		FUNC13(tsk);
		FUNC7(newcg);
		return -ESRCH;
	}
	FUNC8(tsk->cgroups, newcg);
	FUNC13(tsk);

	/* Update the css_set linked lists if we're using them */
	FUNC14(&css_set_lock);
	if (!FUNC4(&tsk->cg_list))
		FUNC5(&tsk->cg_list, &newcg->tasks);
	FUNC15(&css_set_lock);

	/*
	 * We just gained a reference on oldcg by taking it from the task. As
	 * trading it for newcg is protected by cgroup_mutex, we're safe to drop
	 * it here; it will be freed under RCU.
	 */
	FUNC7(oldcg);

	FUNC11(CGRP_RELEASABLE, &oldcgrp->flags);
	return 0;
}