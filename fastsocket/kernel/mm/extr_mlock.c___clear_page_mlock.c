
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;


 int NR_MLOCK ;
 int PageLocked (struct page*) ;
 scalar_t__ PageUnevictable (struct page*) ;
 int UNEVICTABLE_PGCLEARED ;
 int UNEVICTABLE_PGSTRANDED ;
 int VM_BUG_ON (int) ;
 int count_vm_event (int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 int isolate_lru_page (struct page*) ;
 int putback_lru_page (struct page*) ;

void __clear_page_mlock(struct page *page)
{
 VM_BUG_ON(!PageLocked(page));

 if (!page->mapping) {
  return;
 }

 dec_zone_page_state(page, NR_MLOCK);
 count_vm_event(UNEVICTABLE_PGCLEARED);
 if (!isolate_lru_page(page)) {
  putback_lru_page(page);
 } else {



  if (PageUnevictable(page))
   count_vm_event(UNEVICTABLE_PGSTRANDED);
 }
}
