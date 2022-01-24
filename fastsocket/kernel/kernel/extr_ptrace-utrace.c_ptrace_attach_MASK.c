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
struct task_struct {int flags; int exit_state; int /*<<< orphan*/  cred_guard_mutex; int /*<<< orphan*/  ptrace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 int EPERM ; 
 int ERESTARTNOINTR ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  PTRACE_MODE_ATTACH ; 
 int /*<<< orphan*/  PT_PTRACE_CAP ; 
 int /*<<< orphan*/  PT_UTRACED ; 
 int /*<<< orphan*/  SEND_SIG_FORCED ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct task_struct *task)
{
	int retval;

	FUNC3(task);

	retval = -EPERM;
	if (FUNC12(task->flags & PF_KTHREAD))
		goto out;
	if (FUNC8(task, current))
		goto out;

	/*
	 * Protect exec's credential calculations against our interference;
	 * interference; SUID, SGID and LSM creds get determined differently
	 * under ptrace.
	 */
	retval = -ERESTARTNOINTR;
	if (FUNC5(&task->cred_guard_mutex))
		goto out;

	FUNC10(task);
	retval = FUNC2(task, PTRACE_MODE_ATTACH);
	FUNC11(task);
	if (retval)
		goto unlock_creds;

	retval = FUNC7(task, 0);
	if (FUNC12(retval))
		goto unlock_creds;

	FUNC13(&tasklist_lock);
	retval = -EPERM;
	if (FUNC12(task->exit_state))
		goto unlock_tasklist;

	FUNC0(task->ptrace);
	task->ptrace = PT_UTRACED;
	if (FUNC4(CAP_SYS_PTRACE))
		task->ptrace |= PT_PTRACE_CAP;

	FUNC1(task, current);
	FUNC9(SIGSTOP, SEND_SIG_FORCED, task);

	retval = 0;
unlock_tasklist:
	FUNC14(&tasklist_lock);
unlock_creds:
	FUNC6(&task->cred_guard_mutex);
out:
	return retval;
}