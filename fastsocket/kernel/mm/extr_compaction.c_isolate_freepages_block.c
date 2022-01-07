
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long zone_start_pfn; unsigned long spanned_pages; } ;
struct page {int lru; } ;
struct list_head {int dummy; } ;
struct compact_control {int dummy; } ;


 unsigned long ALIGN (unsigned long,int ) ;
 int PageBuddy (struct page*) ;
 int list_add (int *,struct list_head*) ;
 unsigned long min (unsigned long,unsigned long) ;
 int pageblock_nr_pages ;
 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid_within (unsigned long) ;
 int split_free_page (struct page*) ;
 int update_pageblock_skip (struct compact_control*,struct page*,int,int) ;

__attribute__((used)) static unsigned long isolate_freepages_block(struct compact_control *cc,
    struct zone *zone,
    unsigned long blockpfn,
    struct list_head *freelist)
{
 unsigned long zone_end_pfn, end_pfn;
 int total_isolated = 0;
 struct page *cursor, *valid_page = ((void*)0);


 zone_end_pfn = zone->zone_start_pfn + zone->spanned_pages;







 end_pfn = ALIGN(blockpfn + 1, pageblock_nr_pages);
 end_pfn = min(end_pfn, zone_end_pfn);


 for (; blockpfn < end_pfn; blockpfn++) {
  if (pfn_valid_within(blockpfn))
   break;
 }
 cursor = pfn_to_page(blockpfn);


 for (; blockpfn < end_pfn; blockpfn++, cursor++) {
  int isolated, i;
  struct page *page = cursor;

  if (!pfn_valid_within(blockpfn))
   continue;

  if (!valid_page)
   valid_page = page;

  if (!PageBuddy(page))
   continue;


  isolated = split_free_page(page);
  total_isolated += isolated;
  for (i = 0; i < isolated; i++) {
   list_add(&page->lru, freelist);
   page++;
  }


  if (isolated) {
   blockpfn += isolated - 1;
   cursor += isolated - 1;
  }
 }


 if (blockpfn == end_pfn)
  update_pageblock_skip(cc, valid_page, total_isolated, 0);

 return total_isolated;
}
