
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pfn_t ;


 int kvm_is_mmio_pfn (int ) ;
 int mark_page_accessed (int ) ;
 int pfn_to_page (int ) ;

void kvm_set_pfn_accessed(pfn_t pfn)
{
 if (!kvm_is_mmio_pfn(pfn))
  mark_page_accessed(pfn_to_page(pfn));
}
