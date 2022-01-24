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
struct task_struct {int flags; } ;
struct pid {int dummy; } ;
struct kvm_vcpu {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int PF_VCPU ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 struct pid* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct task_struct*,int) ; 

bool FUNC6(struct kvm_vcpu *target)
{
	struct pid *pid;
	struct task_struct *task = NULL;
	bool ret = false;

	FUNC3();
	pid = FUNC2(target->pid);
	if (pid)
		task = FUNC0(target->pid, PIDTYPE_PID);
	FUNC4();
	if (!task)
		return ret;
	if (task->flags & PF_VCPU) {
		FUNC1(task);
		return ret;
	}
	ret = FUNC5(task, 1);
	FUNC1(task);

	return ret;
}