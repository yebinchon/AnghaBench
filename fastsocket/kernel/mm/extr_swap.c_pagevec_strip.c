
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;


 scalar_t__ page_has_private (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int try_to_release_page (struct page*,int ) ;
 scalar_t__ trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

void pagevec_strip(struct pagevec *pvec)
{
 int i;

 for (i = 0; i < pagevec_count(pvec); i++) {
  struct page *page = pvec->pages[i];

  if (page_has_private(page) && trylock_page(page)) {
   if (page_has_private(page))
    try_to_release_page(page, 0);
   unlock_page(page);
  }
 }
}
