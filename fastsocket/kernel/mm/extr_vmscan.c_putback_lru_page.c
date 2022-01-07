
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageUnevictable (struct page*) ;
 int LRU_UNEVICTABLE ;
 int PageLRU (struct page*) ;
 int PageUnevictable (struct page*) ;
 int TestClearPageActive (struct page*) ;
 int UNEVICTABLE_PGCULLED ;
 int UNEVICTABLE_PGRESCUED ;
 int VM_BUG_ON (int ) ;
 int add_page_to_unevictable_list (struct page*) ;
 int count_vm_event (int ) ;
 int isolate_lru_page (struct page*) ;
 int lru_cache_add_lru (struct page*,int) ;
 scalar_t__ page_evictable (struct page*,int *) ;
 int page_lru_base_type (struct page*) ;
 int put_page (struct page*) ;
 int smp_mb () ;

void putback_lru_page(struct page *page)
{
 int lru;
 int active = !!TestClearPageActive(page);
 int was_unevictable = PageUnevictable(page);

 VM_BUG_ON(PageLRU(page));

redo:
 ClearPageUnevictable(page);

 if (page_evictable(page, ((void*)0))) {






  lru = active + page_lru_base_type(page);
  lru_cache_add_lru(page, lru);
 } else {




  lru = LRU_UNEVICTABLE;
  add_page_to_unevictable_list(page);
  smp_mb();
 }






 if (lru == LRU_UNEVICTABLE && page_evictable(page, ((void*)0))) {
  if (!isolate_lru_page(page)) {
   put_page(page);
   goto redo;
  }




 }

 if (was_unevictable && lru != LRU_UNEVICTABLE)
  count_vm_event(UNEVICTABLE_PGRESCUED);
 else if (!was_unevictable && lru == LRU_UNEVICTABLE)
  count_vm_event(UNEVICTABLE_PGCULLED);

 put_page(page);
}
