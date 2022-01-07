
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int nmemslots; int * memslots; } ;
struct kvm {int memslots; } ;


 int kvm_iommu_map_pages (struct kvm*,int *) ;
 struct kvm_memslots* rcu_dereference (int ) ;

__attribute__((used)) static int kvm_iommu_map_memslots(struct kvm *kvm)
{
 int i, r = 0;
 struct kvm_memslots *slots;

 slots = rcu_dereference(kvm->memslots);

 for (i = 0; i < slots->nmemslots; i++) {
  r = kvm_iommu_map_pages(kvm, &slots->memslots[i]);
  if (r)
   break;
 }

 return r;
}
