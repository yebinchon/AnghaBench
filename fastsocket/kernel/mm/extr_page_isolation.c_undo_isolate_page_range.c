
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int start_pfn ;
typedef int end_pfn ;


 int BUG_ON (int ) ;
 scalar_t__ MIGRATE_ISOLATE ;
 struct page* __first_valid_page (unsigned long,int) ;
 scalar_t__ get_pageblock_migratetype (struct page*) ;
 int pageblock_nr_pages ;
 int unset_migratetype_isolate (struct page*) ;

int
undo_isolate_page_range(unsigned long start_pfn, unsigned long end_pfn)
{
 unsigned long pfn;
 struct page *page;
 BUG_ON((start_pfn) & (pageblock_nr_pages - 1));
 BUG_ON((end_pfn) & (pageblock_nr_pages - 1));
 for (pfn = start_pfn;
      pfn < end_pfn;
      pfn += pageblock_nr_pages) {
  page = __first_valid_page(pfn, pageblock_nr_pages);
  if (!page || get_pageblock_migratetype(page) != MIGRATE_ISOLATE)
   continue;
  unset_migratetype_isolate(page);
 }
 return 0;
}
