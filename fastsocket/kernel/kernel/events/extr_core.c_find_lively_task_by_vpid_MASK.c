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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int EACCES ; 
 struct task_struct* FUNC0 (int) ; 
 int ESRCH ; 
 int /*<<< orphan*/  PTRACE_MODE_READ ; 
 struct task_struct* current ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static struct task_struct *
FUNC7(pid_t vpid)
{
	struct task_struct *task;
	int err;

	FUNC5();
	if (!vpid)
		task = current;
	else
		task = FUNC1(vpid);
	if (task)
		FUNC2(task);
	FUNC6();

	if (!task)
		return FUNC0(-ESRCH);

	/* Reuse ptrace permission checks for now. */
	err = -EACCES;
	if (!FUNC3(task, PTRACE_MODE_READ))
		goto errout;

	return task;
errout:
	FUNC4(task);
	return FUNC0(err);

}