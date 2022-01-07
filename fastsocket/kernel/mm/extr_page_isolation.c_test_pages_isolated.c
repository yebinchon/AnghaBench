
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lock; } ;
struct page {int dummy; } ;


 int EBUSY ;
 scalar_t__ MIGRATE_ISOLATE ;
 struct page* __first_valid_page (unsigned long,unsigned long) ;
 int __test_page_isolated_in_pageblock (unsigned long,unsigned long) ;
 scalar_t__ get_pageblock_migratetype (struct page*) ;
 struct zone* page_zone (struct page*) ;
 unsigned long pageblock_nr_pages ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int test_pages_isolated(unsigned long start_pfn, unsigned long end_pfn)
{
 unsigned long pfn, flags;
 struct page *page;
 struct zone *zone;
 int ret;

 pfn = start_pfn;





 for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
  page = __first_valid_page(pfn, pageblock_nr_pages);
  if (page && get_pageblock_migratetype(page) != MIGRATE_ISOLATE)
   break;
 }
 page = __first_valid_page(start_pfn, end_pfn - start_pfn);
 if ((pfn < end_pfn) || !page)
  return -EBUSY;

 zone = page_zone(page);
 spin_lock_irqsave(&zone->lock, flags);
 ret = __test_page_isolated_in_pageblock(start_pfn, end_pfn);
 spin_unlock_irqrestore(&zone->lock, flags);
 return ret ? 0 : -EBUSY;
}
