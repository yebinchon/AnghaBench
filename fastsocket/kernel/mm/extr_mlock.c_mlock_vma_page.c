
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int NR_MLOCK ;
 int PageLocked (struct page*) ;
 int TestSetPageMlocked (struct page*) ;
 int UNEVICTABLE_PGMLOCKED ;
 int count_vm_event (int ) ;
 int inc_zone_page_state (struct page*,int ) ;
 int isolate_lru_page (struct page*) ;
 int putback_lru_page (struct page*) ;

void mlock_vma_page(struct page *page)
{
 BUG_ON(!PageLocked(page));

 if (!TestSetPageMlocked(page)) {
  inc_zone_page_state(page, NR_MLOCK);
  count_vm_event(UNEVICTABLE_PGMLOCKED);
  if (!isolate_lru_page(page))
   putback_lru_page(page);
 }
}
