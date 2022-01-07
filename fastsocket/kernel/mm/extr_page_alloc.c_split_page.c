
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int shadow; } ;


 int PageCompound (struct page*) ;
 int VM_BUG_ON (int) ;
 scalar_t__ kmemcheck_page_is_tracked (struct page*) ;
 int page_count (struct page*) ;
 int set_page_refcounted (struct page*) ;
 struct page* virt_to_page (int ) ;

void split_page(struct page *page, unsigned int order)
{
 int i;

 VM_BUG_ON(PageCompound(page));
 VM_BUG_ON(!page_count(page));
 for (i = 1; i < (1 << order); i++)
  set_page_refcounted(page + i);
}
