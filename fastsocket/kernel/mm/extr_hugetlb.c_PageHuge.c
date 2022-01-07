
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int compound_page_dtor ;


 int PageCompound (struct page*) ;
 struct page* compound_head (struct page*) ;
 int * free_huge_page ;
 int * get_compound_page_dtor (struct page*) ;

int PageHuge(struct page *page)
{
 compound_page_dtor *dtor;

 if (!PageCompound(page))
  return 0;

 page = compound_head(page);
 dtor = get_compound_page_dtor(page);

 return dtor == free_huge_page;
}
