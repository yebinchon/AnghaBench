
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SetPageHWPoison (struct page*) ;
 int compound_trans_order (struct page*) ;

__attribute__((used)) static void set_page_hwpoison_huge_page(struct page *hpage)
{
 int i;
 int nr_pages = 1 << compound_trans_order(hpage);
 for (i = 0; i < nr_pages; i++)
  SetPageHWPoison(hpage + i);
}
