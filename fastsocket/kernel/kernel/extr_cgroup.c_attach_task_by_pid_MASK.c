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
typedef  scalar_t__ u64 ;
struct task_struct {int flags; struct task_struct* group_leader; } ;
struct cred {scalar_t__ euid; scalar_t__ uid; scalar_t__ suid; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int ENODEV ; 
 int ESRCH ; 
 int PF_EXITING ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct cgroup*,struct task_struct*) ; 
 int FUNC2 (struct cgroup*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct task_struct* current ; 
 struct cred* FUNC5 () ; 
 struct task_struct* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 

__attribute__((used)) static int FUNC13(struct cgroup *cgrp, u64 pid, bool threadgroup)
{
	struct task_struct *tsk;
	const struct cred *cred = FUNC5(), *tcred;
	int ret;

	if (!FUNC3(cgrp))
		return -ENODEV;

	if (pid) {
		FUNC9();
		tsk = FUNC6(pid);
		if (!tsk) {
			FUNC10();
			FUNC4();
			return -ESRCH;
		}
		if (threadgroup) {
			/*
			 * RCU protects this access, since tsk was found in the
			 * tid map. a race with de_thread may cause group_leader
			 * to stop being the leader, but cgroup_attach_proc will
			 * detect it later.
			 */
			tsk = tsk->group_leader;
		} else if (tsk->flags & PF_EXITING) {
			/* optimization for the single-task-only case */
			FUNC10();
			FUNC4();
			return -ESRCH;
		}

		/*
		 * even if we're attaching all tasks in the thread group, we
		 * only need to check permissions on one of them.
		 */
		tcred = FUNC0(tsk);
		if (cred->euid &&
		    cred->euid != tcred->uid &&
		    cred->euid != tcred->suid) {
			FUNC10();
			FUNC4();
			return -EACCES;
		}
		FUNC7(tsk);
		FUNC10();
	} else {
		if (threadgroup)
			tsk = current->group_leader;
		else
			tsk = current;
		FUNC7(tsk);
	}

	if (threadgroup) {
		FUNC11(tsk);
		ret = FUNC1(cgrp, tsk);
		FUNC12(tsk);
	} else {
		ret = FUNC2(cgrp, tsk);
	}
	FUNC8(tsk);
	FUNC4();
	return ret;
}