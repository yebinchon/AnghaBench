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
struct kvm_coalesced_mmio_zone {scalar_t__ addr; scalar_t__ size; } ;
struct kvm_coalesced_mmio_dev {int nb_zones; struct kvm_coalesced_mmio_zone* zone; } ;
struct kvm {int /*<<< orphan*/  slots_lock; struct kvm_coalesced_mmio_dev* coalesced_mmio_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct kvm *kvm,
					   struct kvm_coalesced_mmio_zone *zone)
{
	int i;
	struct kvm_coalesced_mmio_dev *dev = kvm->coalesced_mmio_dev;
	struct kvm_coalesced_mmio_zone *z;

	if (dev == NULL)
		return -EINVAL;

	FUNC0(&kvm->slots_lock);

	i = dev->nb_zones;
	while(i) {
		z = &dev->zone[i - 1];

		/* unregister all zones
		 * included in (zone->addr, zone->size)
		 */

		if (zone->addr <= z->addr &&
		    z->addr + z->size <= zone->addr + zone->size) {
			dev->nb_zones--;
			*z = dev->zone[dev->nb_zones];
		}
		i--;
	}

	FUNC1(&kvm->slots_lock);

	return 0;
}