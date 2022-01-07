
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_HIGHUSER ;
 int __GFP_ZERO ;
 struct page* __xip_sparse_page ;
 struct page* alloc_page (int) ;

__attribute__((used)) static struct page *xip_sparse_page(void)
{
 if (!__xip_sparse_page) {
  struct page *page = alloc_page(GFP_HIGHUSER | __GFP_ZERO);

  if (page)
   __xip_sparse_page = page;
 }
 return __xip_sparse_page;
}
