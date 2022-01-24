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
struct kvm_ioapic_state {int dummy; } ;
struct kvm_ioapic {int /*<<< orphan*/  lock; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct kvm_ioapic* FUNC0 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_ioapic_state*,struct kvm_ioapic*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct kvm *kvm, struct kvm_ioapic_state *state)
{
	struct kvm_ioapic *ioapic = FUNC0(kvm);
	if (!ioapic)
		return -EINVAL;

	FUNC2(&ioapic->lock);
	FUNC1(state, ioapic, sizeof(struct kvm_ioapic_state));
	FUNC3(&ioapic->lock);
	return 0;
}