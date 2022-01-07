
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int nmemslots; int * memslots; } ;
struct kvm {int memslots; } ;


 int kvm_iommu_unmap_pages (struct kvm*,int *) ;
 struct kvm_memslots* rcu_dereference (int ) ;

__attribute__((used)) static int kvm_iommu_unmap_memslots(struct kvm *kvm)
{
 int i;
 struct kvm_memslots *slots;

 slots = rcu_dereference(kvm->memslots);

 for (i = 0; i < slots->nmemslots; i++) {
  kvm_iommu_unmap_pages(kvm, &slots->memslots[i]);
 }

 return 0;
}
