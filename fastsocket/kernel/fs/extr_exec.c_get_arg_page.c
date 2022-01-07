
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct linux_binprm {struct page** page; } ;


 int GFP_HIGHUSER ;
 unsigned long PAGE_SIZE ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;

struct page *get_arg_page(struct linux_binprm *bprm, unsigned long pos,
  int write)
{
 struct page *page;

 page = bprm->page[pos / PAGE_SIZE];
 if (!page && write) {
  page = alloc_page(GFP_HIGHUSER|__GFP_ZERO);
  if (!page)
   return ((void*)0);
  bprm->page[pos / PAGE_SIZE] = page;
 }

 return page;
}
