
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; int zone_start_pfn; } ;
struct page {int lru; } ;
struct list_head {int dummy; } ;
struct compact_control {unsigned long migrate_pfn; unsigned long free_pfn; int finished_update_migrate; unsigned long nr_migratepages; int sync; struct list_head migratepages; } ;
typedef int isolate_mode_t ;


 int ALIGN (unsigned long,unsigned long) ;
 int BLK_RW_ASYNC ;
 unsigned long COMPACT_CLUSTER_MAX ;
 int HZ ;
 int ISOLATE_ACTIVE ;
 int ISOLATE_ASYNC_MIGRATE ;
 int ISOLATE_INACTIVE ;
 int MAX_ORDER_NR_PAGES ;
 scalar_t__ MIGRATE_MOVABLE ;
 scalar_t__ PageBuddy (struct page*) ;
 int PageLRU (struct page*) ;
 int PageTransCompound (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 unsigned long SWAP_CLUSTER_MAX ;
 int VM_BUG_ON (int ) ;
 scalar_t__ __isolate_lru_page (struct page*,int,int ) ;
 int acct_isolated (struct zone*,int,struct compact_control*) ;
 int compact_checklock_irqsave (int *,unsigned long*,int,struct compact_control*) ;
 int compound_order (struct page*) ;
 int cond_resched () ;
 int congestion_wait (int ,int) ;
 int current ;
 int del_page_from_lru_list (struct zone*,struct page*,int ) ;
 scalar_t__ fatal_signal_pending (int ) ;
 scalar_t__ get_pageblock_migratetype (struct page*) ;
 int isolation_suitable (struct compact_control*,struct page*) ;
 int list_add (int *,struct list_head*) ;
 unsigned long max (unsigned long,int ) ;
 int page_lru (struct page*) ;
 struct zone* page_zone (struct page*) ;
 unsigned long pageblock_nr_pages ;
 unsigned long pageblock_order ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int pfn_valid_within (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int too_many_isolated (struct zone*) ;
 scalar_t__ unlikely (int ) ;
 int update_pageblock_skip (struct compact_control*,struct page*,unsigned long,int) ;

__attribute__((used)) static unsigned long isolate_migratepages(struct zone *zone,
     struct compact_control *cc)
{
 unsigned long low_pfn, end_pfn;
 unsigned long last_pageblock_nr = 0, pageblock_nr;
 struct list_head *migratelist = &cc->migratepages;
 isolate_mode_t mode = ISOLATE_ACTIVE|ISOLATE_INACTIVE;
 unsigned long flags;
 bool locked;
 struct page *page = ((void*)0), *valid_page = ((void*)0);


 low_pfn = max(cc->migrate_pfn, zone->zone_start_pfn);


 end_pfn = ALIGN(low_pfn + pageblock_nr_pages, pageblock_nr_pages);


 if (end_pfn > cc->free_pfn || !pfn_valid(low_pfn)) {
  cc->migrate_pfn = end_pfn;
  return 0;
 }






 while (unlikely(too_many_isolated(zone))) {
  congestion_wait(BLK_RW_ASYNC, HZ/10);

  if (fatal_signal_pending(current))
   return 0;
 }


 cond_resched();
 spin_lock_irqsave(&zone->lru_lock, flags);
 locked = 1;
 for (; low_pfn < end_pfn; low_pfn++) {

  if (!((low_pfn+1) % SWAP_CLUSTER_MAX)) {
   spin_unlock_irqrestore(&zone->lru_lock, flags);
   locked = 0;
  }


  locked = compact_checklock_irqsave(&zone->lru_lock, &flags,
        locked, cc);
  if (!locked)
   break;







  if ((low_pfn & (MAX_ORDER_NR_PAGES - 1)) == 0) {
   if (!pfn_valid(low_pfn)) {
    low_pfn += MAX_ORDER_NR_PAGES - 1;
    continue;
   }
  }

  if (!pfn_valid_within(low_pfn))
   continue;







  page = pfn_to_page(low_pfn);
  if (page_zone(page) != zone)
   continue;

  if (!valid_page)
   valid_page = page;


  pageblock_nr = low_pfn >> pageblock_order;
  if (!isolation_suitable(cc, page))
   goto next_pageblock;


  if (PageBuddy(page))
   continue;






  if (!cc->sync && last_pageblock_nr != pageblock_nr &&
    get_pageblock_migratetype(page) != MIGRATE_MOVABLE) {
   low_pfn += pageblock_nr_pages;
   low_pfn = ALIGN(low_pfn, pageblock_nr_pages) - 1;
   last_pageblock_nr = pageblock_nr;
   cc->finished_update_migrate = 1;
   continue;
  }

  if (!PageLRU(page))
   continue;






  if (PageTransHuge(page)) {
   low_pfn += (1 << compound_order(page)) - 1;
   continue;
  }

  if (!cc->sync)
   mode |= ISOLATE_ASYNC_MIGRATE;


  if (__isolate_lru_page(page, mode, 0) != 0)
   continue;

  VM_BUG_ON(PageTransCompound(page));


  cc->finished_update_migrate = 1;
  del_page_from_lru_list(zone, page, page_lru(page));
  list_add(&page->lru, migratelist);
  cc->nr_migratepages++;


  if (cc->nr_migratepages == COMPACT_CLUSTER_MAX)
   break;

  continue;

next_pageblock:
  low_pfn += pageblock_nr_pages;
  low_pfn = ALIGN(low_pfn, pageblock_nr_pages) - 1;
  last_pageblock_nr = pageblock_nr;
 }

 acct_isolated(zone, locked, cc);

 if (locked)
  spin_unlock_irqrestore(&zone->lru_lock, flags);


 if (low_pfn == end_pfn)
  update_pageblock_skip(cc, valid_page, cc->nr_migratepages, 1);

 cc->migrate_pfn = low_pfn;
 return cc->nr_migratepages;
}
