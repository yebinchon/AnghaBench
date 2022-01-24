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
struct kvm_coalesced_mmio_dev {int /*<<< orphan*/  dev; struct kvm* kvm; int /*<<< orphan*/  lock; } ;
struct kvm {int /*<<< orphan*/  slots_lock; struct kvm_coalesced_mmio_dev* coalesced_mmio_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  coalesced_mmio_ops ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_coalesced_mmio_dev*) ; 
 int FUNC1 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kvm_coalesced_mmio_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct kvm *kvm)
{
	struct kvm_coalesced_mmio_dev *dev;
	int ret;

	dev = FUNC3(sizeof(struct kvm_coalesced_mmio_dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;
	FUNC6(&dev->lock);
	FUNC2(&dev->dev, &coalesced_mmio_ops);
	dev->kvm = kvm;
	kvm->coalesced_mmio_dev = dev;

	FUNC4(&kvm->slots_lock);
	ret = FUNC1(kvm, KVM_MMIO_BUS, &dev->dev);
	FUNC5(&kvm->slots_lock);
	if (ret < 0)
		FUNC0(dev);

	return ret;
}