
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct pagevec {int cold; int nr; struct page** pages; } ;
struct page {int lru; } ;
struct lruvec {int * lists; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;


 int PGROTATED ;
 int PageActive (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageUnevictable (struct page*) ;
 int __count_vm_events (int ,int) ;
 int list_move_tail (int *,int *) ;
 struct lruvec* mem_cgroup_lru_move_lists (struct zone*,struct page*,int,int) ;
 int page_lru_base_type (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_reinit (struct pagevec*) ;
 int release_pages (struct page**,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pagevec_move_tail(struct pagevec *pvec)
{
 int i;
 int pgmoved = 0;
 struct zone *zone = ((void*)0);

 for (i = 0; i < pagevec_count(pvec); i++) {
  struct page *page = pvec->pages[i];
  struct zone *pagezone = page_zone(page);

  if (pagezone != zone) {
   if (zone)
    spin_unlock(&zone->lru_lock);
   zone = pagezone;
   spin_lock(&zone->lru_lock);
  }
  if (PageLRU(page) && !PageActive(page) && !PageUnevictable(page)) {
   enum lru_list lru = page_lru_base_type(page);
   struct lruvec *lruvec;

   lruvec = mem_cgroup_lru_move_lists(page_zone(page),
          page, lru, lru);
   list_move_tail(&page->lru, &lruvec->lists[lru]);
   pgmoved++;
  }
 }
 if (zone)
  spin_unlock(&zone->lru_lock);
 __count_vm_events(PGROTATED, pgmoved);
 release_pages(pvec->pages, pvec->nr, pvec->cold);
 pagevec_reinit(pvec);
}
