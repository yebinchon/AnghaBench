
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct pagevec {int cold; int nr; struct page** pages; } ;
struct page {int dummy; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;


 int PageActive (struct page*) ;
 int PageLRU (struct page*) ;
 int PageUnevictable (struct page*) ;
 int SetPageActive (struct page*) ;
 int SetPageLRU (struct page*) ;
 int VM_BUG_ON (int ) ;
 int add_page_to_lru_list (struct zone*,struct page*,int) ;
 int is_active_lru (int) ;
 int is_file_lru (int) ;
 int is_unevictable_lru (int) ;
 struct zone* page_zone (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_reinit (struct pagevec*) ;
 int release_pages (struct page**,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_page_reclaim_stat (struct zone*,struct page*,int,int) ;

void ____pagevec_lru_add(struct pagevec *pvec, enum lru_list lru)
{
 int i;
 struct zone *zone = ((void*)0);

 VM_BUG_ON(is_unevictable_lru(lru));

 for (i = 0; i < pagevec_count(pvec); i++) {
  struct page *page = pvec->pages[i];
  struct zone *pagezone = page_zone(page);
  int file;
  int active;

  if (pagezone != zone) {
   if (zone)
    spin_unlock_irq(&zone->lru_lock);
   zone = pagezone;
   spin_lock_irq(&zone->lru_lock);
  }
  VM_BUG_ON(PageActive(page));
  VM_BUG_ON(PageUnevictable(page));
  VM_BUG_ON(PageLRU(page));
  SetPageLRU(page);
  active = is_active_lru(lru);
  file = is_file_lru(lru);
  if (active)
   SetPageActive(page);
  update_page_reclaim_stat(zone, page, file, active);
  add_page_to_lru_list(zone, page, lru);
 }
 if (zone)
  spin_unlock_irq(&zone->lru_lock);
 release_pages(pvec->pages, pvec->nr, pvec->cold);
 pagevec_reinit(pvec);
}
