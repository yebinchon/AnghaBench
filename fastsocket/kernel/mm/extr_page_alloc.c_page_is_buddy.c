
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageBuddy (struct page*) ;
 int VM_BUG_ON (int) ;
 scalar_t__ page_count (struct page*) ;
 int page_order (struct page*) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ page_zone_id (struct page*) ;
 int pfn_valid_within (int ) ;

__attribute__((used)) static inline int page_is_buddy(struct page *page, struct page *buddy,
        int order)
{
 if (!pfn_valid_within(page_to_pfn(buddy)))
  return 0;

 if (page_zone_id(page) != page_zone_id(buddy))
  return 0;

 if (PageBuddy(buddy) && page_order(buddy) == order) {
  VM_BUG_ON(page_count(buddy) != 0);
  return 1;
 }
 return 0;
}
