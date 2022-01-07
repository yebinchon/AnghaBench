
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* free_area; } ;
struct page {int lru; } ;
struct TYPE_2__ {int nr_free; } ;


 int BUG_ON (int) ;
 int MIGRATE_MOVABLE ;
 int NR_FREE_PAGES ;
 int PageBuddy (struct page*) ;
 int __mod_zone_page_state (struct zone*,int ,unsigned long) ;
 int list_del (int *) ;
 int low_wmark_pages (struct zone*) ;
 unsigned int page_order (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int pageblock_nr_pages ;
 int pageblock_order ;
 int rmv_page_order (struct page*) ;
 int set_page_refcounted (struct page*) ;
 int set_pageblock_migratetype (struct page*,int ) ;
 int split_page (struct page*,unsigned int) ;
 int zone_watermark_ok (struct zone*,int ,unsigned long,int ,int ) ;

int split_free_page(struct page *page)
{
 unsigned int order;
 unsigned long watermark;
 struct zone *zone;

 BUG_ON(!PageBuddy(page));

 zone = page_zone(page);
 order = page_order(page);


 watermark = low_wmark_pages(zone) + (1 << order);
 if (!zone_watermark_ok(zone, 0, watermark, 0, 0))
  return 0;


 list_del(&page->lru);
 zone->free_area[order].nr_free--;
 rmv_page_order(page);
 __mod_zone_page_state(zone, NR_FREE_PAGES, -(1UL << order));


 set_page_refcounted(page);
 split_page(page, order);

 if (order >= pageblock_order - 1) {
  struct page *endpage = page + (1 << order) - 1;
  for (; page < endpage; page += pageblock_nr_pages)
   set_pageblock_migratetype(page, MIGRATE_MOVABLE);
 }

 return 1 << order;
}
