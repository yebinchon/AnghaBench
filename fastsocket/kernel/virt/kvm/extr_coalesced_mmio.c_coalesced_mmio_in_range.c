
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_coalesced_mmio_zone {scalar_t__ addr; scalar_t__ size; } ;
struct kvm_coalesced_mmio_ring {int first; int last; } ;
struct kvm_coalesced_mmio_dev {int nb_zones; struct kvm_coalesced_mmio_zone* zone; TYPE_1__* kvm; } ;
typedef scalar_t__ gpa_t ;
struct TYPE_2__ {struct kvm_coalesced_mmio_ring* coalesced_mmio_ring; } ;


 int KVM_COALESCED_MMIO_MAX ;
 unsigned int KVM_MAX_VCPUS ;

__attribute__((used)) static int coalesced_mmio_in_range(struct kvm_coalesced_mmio_dev *dev,
       gpa_t addr, int len)
{
 struct kvm_coalesced_mmio_zone *zone;
 struct kvm_coalesced_mmio_ring *ring;
 unsigned avail;
 int i;







 ring = dev->kvm->coalesced_mmio_ring;
 avail = (ring->first - ring->last - 1) % KVM_COALESCED_MMIO_MAX;
 if (avail < KVM_MAX_VCPUS) {

  return 0;
 }



 for (i = 0; i < dev->nb_zones; i++) {
  zone = &dev->zone[i];





  if (zone->addr <= addr &&
      addr + len <= zone->addr + zone->size)
   return 1;
 }
 return 0;
}
