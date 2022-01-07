
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long compact_cached_migrate_pfn; unsigned long compact_cached_free_pfn; } ;
struct page {int dummy; } ;
struct compact_control {int finished_update_free; int finished_update_migrate; struct zone* zone; } ;


 unsigned long page_to_pfn (struct page*) ;
 int set_pageblock_skip (struct page*) ;

__attribute__((used)) static void update_pageblock_skip(struct compact_control *cc,
   struct page *page, unsigned long nr_isolated,
   bool migrate_scanner)
{
 struct zone *zone = cc->zone;
 if (!page)
  return;

 if (!nr_isolated) {
  unsigned long pfn = page_to_pfn(page);
  set_pageblock_skip(page);


  if (migrate_scanner) {
   if (!cc->finished_update_migrate &&
       pfn > zone->compact_cached_migrate_pfn)
    zone->compact_cached_migrate_pfn = pfn;
  } else {
   if (!cc->finished_update_free &&
       pfn < zone->compact_cached_free_pfn)
    zone->compact_cached_free_pfn = pfn;
  }
 }
}
