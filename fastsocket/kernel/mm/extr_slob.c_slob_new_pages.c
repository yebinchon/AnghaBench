
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* alloc_pages (int ,int) ;
 void* alloc_pages_exact_node (int,int ,int) ;
 void* page_address (void*) ;

__attribute__((used)) static void *slob_new_pages(gfp_t gfp, int order, int node)
{
 void *page;






  page = alloc_pages(gfp, order);

 if (!page)
  return ((void*)0);

 return page_address(page);
}
