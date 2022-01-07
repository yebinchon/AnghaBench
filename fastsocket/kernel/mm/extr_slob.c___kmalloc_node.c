
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {size_t private; } ;
typedef int gfp_t ;


 int ARCH_KMALLOC_MINALIGN ;
 int ARCH_SLAB_MINALIGN ;
 int PAGE_SIZE ;
 void* ZERO_SIZE_PTR ;
 int _RET_IP_ ;
 int __GFP_COMP ;
 unsigned int get_order (size_t) ;
 int kmemleak_alloc (void*,size_t,int,int) ;
 int lockdep_trace_alloc (int) ;
 int max (int ,int ) ;
 unsigned int* slob_alloc (size_t,int,int,int) ;
 void* slob_new_pages (int,unsigned int,int) ;
 int trace_kmalloc_node (int ,void*,size_t,int,int,int) ;
 struct page* virt_to_page (void*) ;

void *__kmalloc_node(size_t size, gfp_t gfp, int node)
{
 unsigned int *m;
 int align = max(ARCH_KMALLOC_MINALIGN, ARCH_SLAB_MINALIGN);
 void *ret;

 lockdep_trace_alloc(gfp);

 if (size < PAGE_SIZE - align) {
  if (!size)
   return ZERO_SIZE_PTR;

  m = slob_alloc(size + align, gfp, align, node);

  if (!m)
   return ((void*)0);
  *m = size;
  ret = (void *)m + align;

  trace_kmalloc_node(_RET_IP_, ret,
       size, size + align, gfp, node);
 } else {
  unsigned int order = get_order(size);

  ret = slob_new_pages(gfp | __GFP_COMP, get_order(size), node);
  if (ret) {
   struct page *page;
   page = virt_to_page(ret);
   page->private = size;
  }

  trace_kmalloc_node(_RET_IP_, ret,
       size, PAGE_SIZE << order, gfp, node);
 }

 kmemleak_alloc(ret, size, 1, gfp);
 return ret;
}
