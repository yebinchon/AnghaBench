
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lock; } ;
struct list_head {int dummy; } ;
struct page {struct list_head lru; } ;


 int NR_FREE_PAGES ;
 int __mod_zone_page_state (struct zone*,int ,int) ;
 struct page* __rmqueue (struct zone*,unsigned int,int) ;
 scalar_t__ likely (int) ;
 int list_add (struct list_head*,struct list_head*) ;
 int list_add_tail (struct list_head*,struct list_head*) ;
 int set_page_private (struct page*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int rmqueue_bulk(struct zone *zone, unsigned int order,
   unsigned long count, struct list_head *list,
   int migratetype, int cold)
{
 int i;

 spin_lock(&zone->lock);
 for (i = 0; i < count; ++i) {
  struct page *page = __rmqueue(zone, order, migratetype);
  if (unlikely(page == ((void*)0)))
   break;
  if (likely(cold == 0))
   list_add(&page->lru, list);
  else
   list_add_tail(&page->lru, list);
  set_page_private(page, migratetype);
  list = &page->lru;
 }
 __mod_zone_page_state(zone, NR_FREE_PAGES, -(i << order));
 spin_unlock(&zone->lock);
 return i;
}
