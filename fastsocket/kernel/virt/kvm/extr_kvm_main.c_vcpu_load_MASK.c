#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pid {int dummy; } ;
struct kvm_vcpu {int /*<<< orphan*/  preempt_notifier; struct pid* pid; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {TYPE_1__* pids; } ;
struct TYPE_4__ {struct pid* pid; } ;

/* Variables and functions */
 size_t PIDTYPE_PID ; 
 TYPE_2__* current ; 
 int FUNC0 () ; 
 struct pid* FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pid*) ; 
 int /*<<< orphan*/  FUNC7 (struct pid*,struct pid*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct kvm_vcpu *vcpu)
{
	int cpu;

	FUNC3(&vcpu->mutex);
	if (FUNC9(vcpu->pid != current->pids[PIDTYPE_PID].pid)) {
		/* The thread running this VCPU changed. */
		struct pid *oldpid = vcpu->pid;
		struct pid *newpid = FUNC1(current, PIDTYPE_PID);
		FUNC7(vcpu->pid, newpid);
		FUNC8();
		FUNC6(oldpid);
	}
	cpu = FUNC0();
	FUNC4(&vcpu->preempt_notifier);
	FUNC2(vcpu, cpu);
	FUNC5();
}