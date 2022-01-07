
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int npages; int base_gfn; } ;
struct kvm {int dummy; } ;


 int kvm_iommu_put_pages (struct kvm*,int ,int ) ;

void kvm_iommu_unmap_pages(struct kvm *kvm, struct kvm_memory_slot *slot)
{
 kvm_iommu_put_pages(kvm, slot->base_gfn, slot->npages);
}
