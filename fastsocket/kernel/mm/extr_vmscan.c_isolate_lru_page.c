
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct page {int dummy; } ;


 int ClearPageLRU (struct page*) ;
 int EBUSY ;
 scalar_t__ PageLRU (struct page*) ;
 int del_page_from_lru_list (struct zone*,struct page*,int) ;
 scalar_t__ get_page_unless_zero (struct page*) ;
 int page_lru (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int isolate_lru_page(struct page *page)
{
 int ret = -EBUSY;

 if (PageLRU(page)) {
  struct zone *zone = page_zone(page);

  spin_lock_irq(&zone->lru_lock);
  if (PageLRU(page) && get_page_unless_zero(page)) {
   int lru = page_lru(page);
   ret = 0;
   ClearPageLRU(page);

   del_page_from_lru_list(zone, page, lru);
  }
  spin_unlock_irq(&zone->lru_lock);
 }
 return ret;
}
