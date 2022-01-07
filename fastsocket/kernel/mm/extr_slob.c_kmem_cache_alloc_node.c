
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int size; int flags; int (* ctor ) (void*) ;int align; } ;
typedef int gfp_t ;


 int PAGE_SIZE ;
 int SLOB_UNIT ;
 int SLOB_UNITS (int) ;
 int _RET_IP_ ;
 int get_order (int) ;
 int kmemleak_alloc_recursive (void*,int,int,int ,int ) ;
 void* slob_alloc (int,int ,int ,int) ;
 void* slob_new_pages (int ,int,int) ;
 int stub1 (void*) ;
 int trace_kmem_cache_alloc_node (int ,void*,int,int,int ,int) ;

void *kmem_cache_alloc_node(struct kmem_cache *c, gfp_t flags, int node)
{
 void *b;

 if (c->size < PAGE_SIZE) {
  b = slob_alloc(c->size, flags, c->align, node);
  trace_kmem_cache_alloc_node(_RET_IP_, b, c->size,
         SLOB_UNITS(c->size) * SLOB_UNIT,
         flags, node);
 } else {
  b = slob_new_pages(flags, get_order(c->size), node);
  trace_kmem_cache_alloc_node(_RET_IP_, b, c->size,
         PAGE_SIZE << get_order(c->size),
         flags, node);
 }

 if (c->ctor)
  c->ctor(b);

 kmemleak_alloc_recursive(b, c->size, 1, c->flags, flags);
 return b;
}
