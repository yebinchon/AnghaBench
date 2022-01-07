
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pfn_t ;


 int PageReserved (struct page*) ;
 int SetPageDirty (struct page*) ;
 int kvm_is_mmio_pfn (int ) ;
 struct page* pfn_to_page (int ) ;

void kvm_set_pfn_dirty(pfn_t pfn)
{
 if (!kvm_is_mmio_pfn(pfn)) {
  struct page *page = pfn_to_page(pfn);
  if (!PageReserved(page))
   SetPageDirty(page);
 }
}
