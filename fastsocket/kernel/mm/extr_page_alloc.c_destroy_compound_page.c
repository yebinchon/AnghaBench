
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct page* first_page; } ;


 int PageHead (struct page*) ;
 int PageTail (struct page*) ;
 int __ClearPageHead (struct page*) ;
 int __ClearPageTail (struct page*) ;
 int bad_page (struct page*) ;
 unsigned long compound_order (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int destroy_compound_page(struct page *page, unsigned long order)
{
 int i;
 int nr_pages = 1 << order;
 int bad = 0;

 if (unlikely(compound_order(page) != order) ||
     unlikely(!PageHead(page))) {
  bad_page(page);
  bad++;
 }

 __ClearPageHead(page);

 for (i = 1; i < nr_pages; i++) {
  struct page *p = page + i;

  if (unlikely(!PageTail(p) || (p->first_page != page))) {
   bad_page(page);
   bad++;
  }
  __ClearPageTail(p);
 }

 return bad;
}
