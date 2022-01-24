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
struct task_struct {int flags; int exit_state; int ptrace; int /*<<< orphan*/  cred_guard_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 int EPERM ; 
 int ERESTARTNOINTR ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  PTRACE_MODE_ATTACH ; 
 int PT_PTRACED ; 
 int PT_PTRACE_CAP ; 
 int /*<<< orphan*/  SEND_SIG_FORCED ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct task_struct *task)
{
	int retval;

	FUNC2(task);

	retval = -EPERM;
	if (FUNC10(task->flags & PF_KTHREAD))
		goto out;
	if (FUNC6(task, current))
		goto out;

	/*
	 * Protect exec's credential calculations against our interference;
	 * interference; SUID, SGID and LSM creds get determined differently
	 * under ptrace.
	 */
	retval = -ERESTARTNOINTR;
	if (FUNC4(&task->cred_guard_mutex))
		goto out;

	FUNC8(task);
	retval = FUNC1(task, PTRACE_MODE_ATTACH);
	FUNC9(task);
	if (retval)
		goto unlock_creds;

	FUNC11(&tasklist_lock);
	retval = -EPERM;
	if (FUNC10(task->exit_state))
		goto unlock_tasklist;
	if (task->ptrace)
		goto unlock_tasklist;

	task->ptrace = PT_PTRACED;
	if (FUNC3(CAP_SYS_PTRACE))
		task->ptrace |= PT_PTRACE_CAP;

	FUNC0(task, current);
	FUNC7(SIGSTOP, SEND_SIG_FORCED, task);

	retval = 0;
unlock_tasklist:
	FUNC12(&tasklist_lock);
unlock_creds:
	FUNC5(&task->cred_guard_mutex);
out:
	return retval;
}