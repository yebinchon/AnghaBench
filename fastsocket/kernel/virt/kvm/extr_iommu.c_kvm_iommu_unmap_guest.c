
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct iommu_domain* iommu_domain; } ;
struct kvm {int slots_lock; TYPE_1__ arch; } ;
struct iommu_domain {int dummy; } ;


 int iommu_domain_free (struct iommu_domain*) ;
 int kvm_iommu_unmap_memslots (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kvm_iommu_unmap_guest(struct kvm *kvm)
{
 struct iommu_domain *domain = kvm->arch.iommu_domain;


 if (!domain)
  return 0;

 mutex_lock(&kvm->slots_lock);
 kvm_iommu_unmap_memslots(kvm);
 kvm->arch.iommu_domain = ((void*)0);
 mutex_unlock(&kvm->slots_lock);

 iommu_domain_free(domain);
 return 0;
}
