
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* free_area; } ;
struct page {int lru; } ;
struct TYPE_2__ {int * free_list; } ;


 int BUG_ON (int) ;
 int PageBuddy (struct page*) ;
 int VM_BUG_ON (int) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 unsigned long page_order (struct page*) ;
 scalar_t__ page_to_nid (struct page*) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ page_zone (struct page*) ;
 int pfn_valid_within (int ) ;
 scalar_t__ zone_to_nid (struct zone*) ;

__attribute__((used)) static int move_freepages(struct zone *zone,
     struct page *start_page, struct page *end_page,
     int migratetype)
{
 struct page *page;
 unsigned long order;
 int pages_moved = 0;
 BUG_ON(page_zone(start_page) != page_zone(end_page));


 for (page = start_page; page <= end_page;) {

  VM_BUG_ON(page_to_nid(page) != zone_to_nid(zone));

  if (!pfn_valid_within(page_to_pfn(page))) {
   page++;
   continue;
  }

  if (!PageBuddy(page)) {
   page++;
   continue;
  }

  order = page_order(page);
  list_del(&page->lru);
  list_add(&page->lru,
   &zone->free_area[order].free_list[migratetype]);
  page += 1 << order;
  pages_moved += 1 << order;
 }

 return pages_moved;
}
