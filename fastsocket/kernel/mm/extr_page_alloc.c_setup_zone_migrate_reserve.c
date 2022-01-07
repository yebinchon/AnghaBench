
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long zone_start_pfn; unsigned long spanned_pages; int nr_migrate_reserve_block; } ;
struct page {int dummy; } ;


 unsigned long MIGRATE_MOVABLE ;
 unsigned long MIGRATE_RESERVE ;
 scalar_t__ PageReserved (struct page*) ;
 unsigned long get_pageblock_migratetype (struct page*) ;
 int min (int,int) ;
 int min_wmark_pages (struct zone*) ;
 int move_freepages_block (struct zone*,struct page*,unsigned long) ;
 scalar_t__ page_to_nid (struct page*) ;
 scalar_t__ pageblock_nr_pages ;
 int pageblock_order ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int roundup (int ,scalar_t__) ;
 int set_pageblock_migratetype (struct page*,unsigned long) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ zone_to_nid (struct zone*) ;

__attribute__((used)) static void setup_zone_migrate_reserve(struct zone *zone)
{
 unsigned long start_pfn, pfn, end_pfn;
 struct page *page;
 unsigned long block_migratetype;
 int reserve;
 bool anyblock = 0;
 int old_reserve;
 int new_reserve;

retry:

 start_pfn = zone->zone_start_pfn;
 end_pfn = start_pfn + zone->spanned_pages;
 reserve = roundup(min_wmark_pages(zone), pageblock_nr_pages) >>
       pageblock_order;
 reserve = new_reserve = min(2, reserve);
 old_reserve = zone->nr_migrate_reserve_block;


 if (reserve == old_reserve)
  return;

 for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
  if (!pfn_valid(pfn))
   continue;
  page = pfn_to_page(pfn);


  if (page_to_nid(page) != zone_to_nid(zone))
   continue;


  if (PageReserved(page))
   continue;

  block_migratetype = get_pageblock_migratetype(page);


  if (reserve > 0 && block_migratetype == MIGRATE_RESERVE) {
   reserve--;
   continue;
  }


  if (reserve > 0) {
   if (anyblock || block_migratetype == MIGRATE_MOVABLE) {
    set_pageblock_migratetype(page, MIGRATE_RESERVE);
    move_freepages_block(zone, page, MIGRATE_RESERVE);
    reserve--;
    continue;
   }
  } else if (!old_reserve && !anyblock) {






   break;
  }





  if (block_migratetype == MIGRATE_RESERVE) {
   set_pageblock_migratetype(page, MIGRATE_MOVABLE);
   move_freepages_block(zone, page, MIGRATE_MOVABLE);
  }
 }
 if (unlikely(reserve) && !anyblock) {
  anyblock = 1;
  goto retry;
 }

 zone->nr_migrate_reserve_block = new_reserve;
}
