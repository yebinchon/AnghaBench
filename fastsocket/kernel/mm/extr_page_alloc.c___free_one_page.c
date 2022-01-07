
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* free_area; } ;
struct page {int lru; } ;
struct TYPE_2__ {int nr_free; int * free_list; } ;


 int MAX_ORDER ;
 int PageCompound (struct page*) ;
 int VM_BUG_ON (unsigned long) ;
 unsigned long __find_combined_index (unsigned long,unsigned int) ;
 struct page* __page_find_buddy (struct page*,unsigned long,unsigned int) ;
 unsigned long bad_range (struct zone*,struct page*) ;
 int destroy_compound_page (struct page*,unsigned int) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 scalar_t__ page_is_buddy (struct page*,struct page*,unsigned int) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ pfn_valid_within (int) ;
 int rmv_page_order (struct page*) ;
 int set_page_order (struct page*,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void __free_one_page(struct page *page,
  struct zone *zone, unsigned int order,
  int migratetype)
{
 unsigned long page_idx;
 unsigned long combined_idx;
 struct page *buddy;

 if (unlikely(PageCompound(page)))
  if (unlikely(destroy_compound_page(page, order)))
   return;

 VM_BUG_ON(migratetype == -1);

 page_idx = page_to_pfn(page) & ((1 << MAX_ORDER) - 1);

 VM_BUG_ON(page_idx & ((1 << order) - 1));
 VM_BUG_ON(bad_range(zone, page));

 while (order < MAX_ORDER-1) {
  buddy = __page_find_buddy(page, page_idx, order);
  if (!page_is_buddy(page, buddy, order))
   break;


  list_del(&buddy->lru);
  zone->free_area[order].nr_free--;
  rmv_page_order(buddy);
  combined_idx = __find_combined_index(page_idx, order);
  page = page + (combined_idx - page_idx);
  page_idx = combined_idx;
  order++;
 }
 set_page_order(page, order);
 if ((order < MAX_ORDER-2) && pfn_valid_within(page_to_pfn(buddy))) {
  struct page *higher_page, *higher_buddy;
  combined_idx = __find_combined_index(page_idx, order);
  higher_page = page + combined_idx - page_idx;
  higher_buddy = __page_find_buddy(higher_page, combined_idx, order + 1);
  if (page_is_buddy(higher_page, higher_buddy, order + 1)) {
   list_add_tail(&page->lru,
    &zone->free_area[order].free_list[migratetype]);
   goto out;
  }
 }

 list_add(&page->lru, &zone->free_area[order].free_list[migratetype]);
out:
 zone->free_area[order].nr_free++;
}
