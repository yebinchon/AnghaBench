
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 unsigned long __get_free_pages (int ,unsigned int) ;
 unsigned int get_order (size_t) ;
 void* make_alloc_exact (unsigned long,unsigned int,size_t) ;

void *alloc_pages_exact(size_t size, gfp_t gfp_mask)
{
 unsigned int order = get_order(size);
 unsigned long addr;

 addr = __get_free_pages(gfp_mask, order);
 return make_alloc_exact(addr, order, size);
}
