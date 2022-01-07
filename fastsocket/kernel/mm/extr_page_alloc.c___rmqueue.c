
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct page {int dummy; } ;


 int MIGRATE_RESERVE ;
 struct page* __rmqueue_fallback (struct zone*,unsigned int,int) ;
 struct page* __rmqueue_smallest (struct zone*,unsigned int,int) ;
 int trace_mm_page_alloc_zone_locked (struct page*,unsigned int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *__rmqueue(struct zone *zone, unsigned int order,
      int migratetype)
{
 struct page *page;

retry_reserve:
 page = __rmqueue_smallest(zone, order, migratetype);

 if (unlikely(!page) && migratetype != MIGRATE_RESERVE) {
  page = __rmqueue_fallback(zone, order, migratetype);






  if (!page) {
   migratetype = MIGRATE_RESERVE;
   goto retry_reserve;
  }
 }

 trace_mm_page_alloc_zone_locked(page, order, migratetype);
 return page;
}
