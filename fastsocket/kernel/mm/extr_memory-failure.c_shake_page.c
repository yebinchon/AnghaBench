
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ PageLRU (struct page*) ;
 int PageSlab (struct page*) ;
 int drain_all_pages () ;
 scalar_t__ is_free_buddy_page (struct page*) ;
 int lru_add_drain_all () ;
 int page_count (struct page*) ;
 int shrink_slab (int,int ,int) ;

void shake_page(struct page *p, int access)
{
 if (!PageSlab(p)) {
  lru_add_drain_all();
  if (PageLRU(p))
   return;
  drain_all_pages();
  if (PageLRU(p) || is_free_buddy_page(p))
   return;
 }





 if (access) {
  int nr;
  do {
   nr = shrink_slab(1000, GFP_KERNEL, 1000);
   if (page_count(p) == 1)
    break;
  } while (nr > 10);
 }
}
