
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct page {int dummy; } ;


 scalar_t__ LRU_ACTIVE ;
 int PGACTIVATE ;
 int PageActive (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageUnevictable (struct page*) ;
 int SetPageActive (struct page*) ;
 int __count_vm_event (int ) ;
 int add_page_to_lru_list (struct zone*,struct page*,int) ;
 int del_page_from_lru_list (struct zone*,struct page*,int) ;
 int page_is_file_cache (struct page*) ;
 int page_lru_base_type (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_page_reclaim_stat (struct zone*,struct page*,int,int) ;

void activate_page(struct page *page)
{
 struct zone *zone = page_zone(page);

 spin_lock_irq(&zone->lru_lock);
 if (PageLRU(page) && !PageActive(page) && !PageUnevictable(page)) {
  int file = page_is_file_cache(page);
  int lru = page_lru_base_type(page);
  del_page_from_lru_list(zone, page, lru);

  SetPageActive(page);
  lru += LRU_ACTIVE;
  add_page_to_lru_list(zone, page, lru);
  __count_vm_event(PGACTIVATE);

  update_page_reclaim_stat(zone, page, file, 1);
 }
 spin_unlock_irq(&zone->lru_lock);
}
