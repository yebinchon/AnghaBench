
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct kmem_cache* slab; } ;
struct kmem_cache {int flags; size_t objsize; size_t inuse; size_t size; } ;


 size_t PAGE_SIZE ;
 int PageCompound (struct page*) ;
 int PageSlab (struct page*) ;
 int SLAB_DESTROY_BY_RCU ;
 int SLAB_POISON ;
 int SLAB_RED_ZONE ;
 int SLAB_STORE_USER ;
 int WARN_ON (int) ;
 void const* ZERO_SIZE_PTR ;
 size_t compound_order (struct page*) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_head_page (void const*) ;

size_t ksize(const void *object)
{
 struct page *page;
 struct kmem_cache *s;

 if (unlikely(object == ZERO_SIZE_PTR))
  return 0;

 page = virt_to_head_page(object);

 if (unlikely(!PageSlab(page))) {
  WARN_ON(!PageCompound(page));
  return PAGE_SIZE << compound_order(page);
 }
 s = page->slab;
 if (s->flags & (SLAB_DESTROY_BY_RCU | SLAB_STORE_USER))
  return s->inuse;



 return s->size;
}
