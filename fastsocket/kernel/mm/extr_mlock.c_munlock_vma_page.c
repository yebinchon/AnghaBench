
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int NR_MLOCK ;
 int PageLocked (struct page*) ;
 scalar_t__ PageUnevictable (struct page*) ;
 int SWAP_MLOCK ;
 scalar_t__ TestClearPageMlocked (struct page*) ;
 int UNEVICTABLE_PGMUNLOCKED ;
 int UNEVICTABLE_PGSTRANDED ;
 int count_vm_event (int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 int isolate_lru_page (struct page*) ;
 int putback_lru_page (struct page*) ;
 int try_to_munlock (struct page*) ;

void munlock_vma_page(struct page *page)
{
 BUG_ON(!PageLocked(page));

 if (TestClearPageMlocked(page)) {
  dec_zone_page_state(page, NR_MLOCK);
  if (!isolate_lru_page(page)) {
   int ret = try_to_munlock(page);



   if (ret != SWAP_MLOCK)
    count_vm_event(UNEVICTABLE_PGMUNLOCKED);

   putback_lru_page(page);
  } else {
   if (PageUnevictable(page))
    count_vm_event(UNEVICTABLE_PGSTRANDED);
   else
    count_vm_event(UNEVICTABLE_PGMUNLOCKED);
  }
 }
}
