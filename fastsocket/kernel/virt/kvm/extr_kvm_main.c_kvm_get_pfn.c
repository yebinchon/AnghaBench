
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pfn_t ;


 int get_page (int ) ;
 int kvm_is_mmio_pfn (int ) ;
 int pfn_to_page (int ) ;

void kvm_get_pfn(pfn_t pfn)
{
 if (!kvm_is_mmio_pfn(pfn))
  get_page(pfn_to_page(pfn));
}
