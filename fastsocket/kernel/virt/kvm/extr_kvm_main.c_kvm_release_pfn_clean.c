
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pfn_t ;


 int kvm_is_mmio_pfn (int ) ;
 int pfn_to_page (int ) ;
 int put_page (int ) ;

void kvm_release_pfn_clean(pfn_t pfn)
{
 if (!kvm_is_mmio_pfn(pfn))
  put_page(pfn_to_page(pfn));
}
