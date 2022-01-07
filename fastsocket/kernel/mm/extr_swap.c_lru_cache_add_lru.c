
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;


 int ClearPageActive (struct page*) ;
 int ClearPageUnevictable (struct page*) ;
 int PageActive (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageUnevictable (struct page*) ;
 int VM_BUG_ON (int) ;
 int __lru_cache_add (struct page*,int) ;

void lru_cache_add_lru(struct page *page, enum lru_list lru)
{
 if (PageActive(page)) {
  VM_BUG_ON(PageUnevictable(page));
  ClearPageActive(page);
 } else if (PageUnevictable(page)) {
  VM_BUG_ON(PageActive(page));
  ClearPageUnevictable(page);
 }

 VM_BUG_ON(PageLRU(page) || PageActive(page) || PageUnevictable(page));
 __lru_cache_add(page, lru);
}
