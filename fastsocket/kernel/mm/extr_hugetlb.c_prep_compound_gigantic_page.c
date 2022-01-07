
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct page* first_page; } ;


 int __SetPageHead (struct page*) ;
 int __SetPageTail (struct page*) ;
 struct page* mem_map_next (struct page*,struct page*,int) ;
 int set_compound_order (struct page*,unsigned long) ;
 int set_page_count (struct page*,int ) ;

__attribute__((used)) static void prep_compound_gigantic_page(struct page *page, unsigned long order)
{
 int i;
 int nr_pages = 1 << order;
 struct page *p = page + 1;


 set_compound_order(page, order);
 __SetPageHead(page);
 for (i = 1; i < nr_pages; i++, p = mem_map_next(p, page, i)) {
  __SetPageTail(p);
  set_page_count(p, 0);
  p->first_page = page;
 }
}
