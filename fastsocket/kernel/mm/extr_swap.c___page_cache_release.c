
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct page {int dummy; } ;


 scalar_t__ PageLRU (struct page*) ;
 int VM_BUG_ON (int) ;
 int __ClearPageLRU (struct page*) ;
 int del_page_from_lru (struct zone*,struct page*) ;
 struct zone* page_zone (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __page_cache_release(struct page *page)
{
 if (PageLRU(page)) {
  unsigned long flags;
  struct zone *zone = page_zone(page);

  spin_lock_irqsave(&zone->lru_lock, flags);
  VM_BUG_ON(!PageLRU(page));
  __ClearPageLRU(page);
  del_page_from_lru(zone, page);
  spin_unlock_irqrestore(&zone->lru_lock, flags);
 }
}
