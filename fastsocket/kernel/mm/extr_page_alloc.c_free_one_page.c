
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lock; scalar_t__ pages_scanned; } ;
struct page {int dummy; } ;


 int NR_FREE_PAGES ;
 int ZONE_ALL_UNRECLAIMABLE ;
 int __free_one_page (struct page*,struct zone*,int,int) ;
 int __mod_zone_page_state (struct zone*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int watermark_check_zone (struct zone*) ;
 int zone_clear_flag (struct zone*,int ) ;

__attribute__((used)) static void free_one_page(struct zone *zone, struct page *page, int order,
    int migratetype)
{
 spin_lock(&zone->lock);
 zone_clear_flag(zone, ZONE_ALL_UNRECLAIMABLE);
 zone->pages_scanned = 0;

 __free_one_page(page, zone, order, migratetype);
 __mod_zone_page_state(zone, NR_FREE_PAGES, 1 << order);
 spin_unlock(&zone->lock);

 watermark_check_zone(zone);
}
