
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long zone_start_pfn; unsigned long spanned_pages; unsigned long compact_cached_migrate_pfn; unsigned long compact_cached_free_pfn; } ;
struct page {int dummy; } ;


 int clear_pageblock_skip (struct page*) ;
 struct zone* page_zone (struct page*) ;
 scalar_t__ pageblock_nr_pages ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;

__attribute__((used)) static void __reset_isolation_suitable(struct zone *zone)
{
 unsigned long start_pfn = zone->zone_start_pfn;
 unsigned long end_pfn = zone->zone_start_pfn + zone->spanned_pages;
 unsigned long pfn;

 zone->compact_cached_migrate_pfn = start_pfn;
 zone->compact_cached_free_pfn = end_pfn;


 for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
  struct page *page;
  if (!pfn_valid(pfn))
   continue;

  page = pfn_to_page(pfn);
  if (zone != page_zone(page))
   continue;

  clear_pageblock_skip(page);
 }
}
