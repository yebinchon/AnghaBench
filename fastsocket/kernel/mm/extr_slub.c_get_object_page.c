
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageSlab (struct page*) ;
 struct page* virt_to_head_page (void const*) ;

__attribute__((used)) static struct page *get_object_page(const void *x)
{
 struct page *page = virt_to_head_page(x);

 if (!PageSlab(page))
  return ((void*)0);

 return page;
}
