#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvm_ioapic {int /*<<< orphan*/  dev; struct kvm* kvm; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {int /*<<< orphan*/  slots_lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  ioapic_mmio_ops ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_ioapic*) ; 
 int FUNC1 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_ioapic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kvm_ioapic* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct kvm *kvm)
{
	struct kvm_ioapic *ioapic;
	int ret;

	ioapic = FUNC4(sizeof(struct kvm_ioapic), GFP_KERNEL);
	if (!ioapic)
		return -ENOMEM;
	FUNC7(&ioapic->lock);
	kvm->arch.vioapic = ioapic;
	FUNC2(ioapic);
	FUNC3(&ioapic->dev, &ioapic_mmio_ops);
	ioapic->kvm = kvm;
	FUNC5(&kvm->slots_lock);
	ret = FUNC1(kvm, KVM_MMIO_BUS, &ioapic->dev);
	FUNC6(&kvm->slots_lock);
	if (ret < 0)
		FUNC0(ioapic);

	return ret;
}