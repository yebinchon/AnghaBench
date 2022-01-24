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
struct task_struct {scalar_t__ mm; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; scalar_t__ suid; scalar_t__ gid; scalar_t__ egid; scalar_t__ sgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 int EPERM ; 
 int SUID_DUMP_USER ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct cred* FUNC2 () ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct task_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct task_struct *task, unsigned int mode)
{
	const struct cred *cred = FUNC2(), *tcred;

	/* May we inspect the given task?
	 * This check is used both for attaching with ptrace
	 * and for allowing access to sensitive information in /proc.
	 *
	 * ptrace_attach denies several cases that /proc allows
	 * because setting up the necessary parent/child relationship
	 * or halting the specified task is impossible.
	 */
	int dumpable = 0;
	/* Don't let security modules deny introspection */
	if (FUNC6(task, current))
		return 0;
	FUNC4();
	tcred = FUNC0(task);
	if ((cred->uid != tcred->euid ||
	     cred->uid != tcred->suid ||
	     cred->uid != tcred->uid  ||
	     cred->gid != tcred->egid ||
	     cred->gid != tcred->sgid ||
	     cred->gid != tcred->gid) &&
	    !FUNC1(CAP_SYS_PTRACE)) {
		FUNC5();
		return -EPERM;
	}
	FUNC5();
	FUNC8();
	if (task->mm)
		dumpable = FUNC3(task->mm);
	if (dumpable != SUID_DUMP_USER && !FUNC1(CAP_SYS_PTRACE))
		return -EPERM;

	return FUNC7(task, mode);
}