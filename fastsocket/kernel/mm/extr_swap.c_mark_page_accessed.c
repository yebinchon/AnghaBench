
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageReferenced (struct page*) ;
 int PageActive (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 scalar_t__ PageReferenced (struct page*) ;
 int PageUnevictable (struct page*) ;
 int SetPageReferenced (struct page*) ;
 int activate_page (struct page*) ;

void mark_page_accessed(struct page *page)
{
 if (!PageActive(page) && !PageUnevictable(page) &&
   PageReferenced(page) && PageLRU(page)) {
  activate_page(page);
  ClearPageReferenced(page);
 } else if (!PageReferenced(page)) {
  SetPageReferenced(page);
 }
}
