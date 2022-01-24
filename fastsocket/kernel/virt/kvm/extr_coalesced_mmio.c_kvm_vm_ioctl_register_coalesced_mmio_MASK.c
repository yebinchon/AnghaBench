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
struct kvm_coalesced_mmio_zone {int dummy; } ;
struct kvm_coalesced_mmio_dev {size_t nb_zones; struct kvm_coalesced_mmio_zone* zone; } ;
struct kvm {int /*<<< orphan*/  slots_lock; struct kvm_coalesced_mmio_dev* coalesced_mmio_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 size_t KVM_COALESCED_MMIO_ZONE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct kvm *kvm,
				         struct kvm_coalesced_mmio_zone *zone)
{
	struct kvm_coalesced_mmio_dev *dev = kvm->coalesced_mmio_dev;

	if (dev == NULL)
		return -EINVAL;

	FUNC0(&kvm->slots_lock);
	if (dev->nb_zones >= KVM_COALESCED_MMIO_ZONE_MAX) {
		FUNC1(&kvm->slots_lock);
		return -ENOBUFS;
	}

	dev->zone[dev->nb_zones] = *zone;
	dev->nb_zones++;

	FUNC1(&kvm->slots_lock);
	return 0;
}