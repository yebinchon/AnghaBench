
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long zone_start_pfn; unsigned long spanned_pages; } ;
struct page {int dummy; } ;


 int move_freepages (struct zone*,struct page*,struct page*,int) ;
 unsigned long page_to_pfn (struct page*) ;
 int pageblock_nr_pages ;
 struct page* pfn_to_page (unsigned long) ;

__attribute__((used)) static int move_freepages_block(struct zone *zone, struct page *page,
    int migratetype)
{
 unsigned long start_pfn, end_pfn;
 struct page *start_page, *end_page;

 start_pfn = page_to_pfn(page);
 start_pfn = start_pfn & ~(pageblock_nr_pages-1);
 start_page = pfn_to_page(start_pfn);
 end_page = start_page + pageblock_nr_pages - 1;
 end_pfn = start_pfn + pageblock_nr_pages - 1;


 if (start_pfn < zone->zone_start_pfn)
  start_page = page;
 if (end_pfn >= zone->zone_start_pfn + zone->spanned_pages)
  return 0;

 return move_freepages(zone, start_page, end_page, migratetype);
}
