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
struct preempt_notifier {int dummy; } ;
struct kvm_vcpu {int preempted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int) ; 
 struct kvm_vcpu* FUNC1 (struct preempt_notifier*) ; 

__attribute__((used)) static void FUNC2(struct preempt_notifier *pn, int cpu)
{
	struct kvm_vcpu *vcpu = FUNC1(pn);
	if (vcpu->preempted)
		vcpu->preempted = false;

	FUNC0(vcpu, cpu);
}