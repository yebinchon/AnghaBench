
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 struct page* alloc_pages_node (int,int ,unsigned int) ;
 unsigned int get_order (size_t) ;
 void* make_alloc_exact (unsigned long,unsigned int,size_t) ;
 scalar_t__ page_address (struct page*) ;

void *alloc_pages_exact_nid(int nid, size_t size, gfp_t gfp_mask)
{
 unsigned order = get_order(size);
 struct page *p = alloc_pages_node(nid, gfp_mask, order);
 if (!p)
  return ((void*)0);
 return make_alloc_exact((unsigned long)page_address(p), order, size);
}
