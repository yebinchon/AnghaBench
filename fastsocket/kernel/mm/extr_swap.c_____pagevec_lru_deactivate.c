
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct pagevec {int cold; int nr; struct page** pages; } ;
struct page {int dummy; } ;


 int lru_deactivate (struct page*,struct zone*) ;
 struct zone* page_zone (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_reinit (struct pagevec*) ;
 int release_pages (struct page**,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ____pagevec_lru_deactivate(struct pagevec *pvec)
{
 int i;
 struct zone *zone = ((void*)0);

 for (i = 0; i < pagevec_count(pvec); i++) {
  struct page *page = pvec->pages[i];
  struct zone *pagezone = page_zone(page);

  if (pagezone != zone) {
   if (zone)
    spin_unlock_irq(&zone->lru_lock);
   zone = pagezone;
   spin_lock_irq(&zone->lru_lock);
  }
  lru_deactivate(page, zone);
 }
 if (zone)
  spin_unlock_irq(&zone->lru_lock);

 release_pages(pvec->pages, pvec->nr, pvec->cold);
 pagevec_reinit(pvec);
}
