
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_coalesced_mmio_zone {scalar_t__ addr; scalar_t__ size; } ;
struct kvm_coalesced_mmio_dev {int nb_zones; struct kvm_coalesced_mmio_zone* zone; } ;
struct kvm {int slots_lock; struct kvm_coalesced_mmio_dev* coalesced_mmio_dev; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kvm_vm_ioctl_unregister_coalesced_mmio(struct kvm *kvm,
        struct kvm_coalesced_mmio_zone *zone)
{
 int i;
 struct kvm_coalesced_mmio_dev *dev = kvm->coalesced_mmio_dev;
 struct kvm_coalesced_mmio_zone *z;

 if (dev == ((void*)0))
  return -EINVAL;

 mutex_lock(&kvm->slots_lock);

 i = dev->nb_zones;
 while(i) {
  z = &dev->zone[i - 1];





  if (zone->addr <= z->addr &&
      z->addr + z->size <= zone->addr + zone->size) {
   dev->nb_zones--;
   *z = dev->zone[dev->nb_zones];
  }
  i--;
 }

 mutex_unlock(&kvm->slots_lock);

 return 0;
}
