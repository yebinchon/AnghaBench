
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct page {int dummy; } ;


 int LRU_UNEVICTABLE ;
 int SetPageLRU (struct page*) ;
 int SetPageUnevictable (struct page*) ;
 int add_page_to_lru_list (struct zone*,struct page*,int ) ;
 struct zone* page_zone (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void add_page_to_unevictable_list(struct page *page)
{
 struct zone *zone = page_zone(page);

 spin_lock_irq(&zone->lru_lock);
 SetPageUnevictable(page);
 SetPageLRU(page);
 add_page_to_lru_list(zone, page, LRU_UNEVICTABLE);
 spin_unlock_irq(&zone->lru_lock);
}
