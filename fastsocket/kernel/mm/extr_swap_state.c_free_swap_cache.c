
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageSwapCache (struct page*) ;
 int page_mapped (struct page*) ;
 int try_to_free_swap (struct page*) ;
 scalar_t__ trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static inline void free_swap_cache(struct page *page)
{
 if (PageSwapCache(page) && !page_mapped(page) && trylock_page(page)) {
  try_to_free_swap(page);
  unlock_page(page);
 }
}
