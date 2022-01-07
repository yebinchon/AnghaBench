
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int DELAYED ;
 scalar_t__ PageAnon (struct page*) ;
 int RECOVERED ;
 struct page* compound_head (struct page*) ;
 int dequeue_hwpoisoned_huge_page (struct page*) ;
 scalar_t__ page_mapping (struct page*) ;

__attribute__((used)) static int me_huge_page(struct page *p, unsigned long pfn)
{
 int res = 0;
 struct page *hpage = compound_head(p);
 if (!(page_mapping(hpage) || PageAnon(hpage))) {
  res = dequeue_hwpoisoned_huge_page(hpage);
  if (!res)
   return RECOVERED;
 }
 return DELAYED;
}
