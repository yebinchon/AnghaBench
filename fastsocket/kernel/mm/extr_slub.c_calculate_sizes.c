
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int dummy; } ;
struct kmem_cache {unsigned long flags; unsigned long objsize; unsigned long align; unsigned long inuse; unsigned long offset; unsigned long size; void* oo; void* max; void* min; int allocflags; scalar_t__ ctor; } ;


 unsigned long ALIGN (unsigned long,unsigned long) ;
 int SLAB_CACHE_DMA ;
 unsigned long SLAB_DESTROY_BY_RCU ;
 unsigned long SLAB_POISON ;
 int SLAB_RECLAIM_ACCOUNT ;
 unsigned long SLAB_RED_ZONE ;
 unsigned long SLAB_STORE_USER ;
 int SLUB_DMA ;
 int __GFP_COMP ;
 int __GFP_RECLAIMABLE ;
 unsigned long __OBJECT_POISON ;
 unsigned long calculate_alignment (unsigned long,unsigned long,unsigned long) ;
 int calculate_order (unsigned long) ;
 int get_order (unsigned long) ;
 void* oo_make (int,unsigned long) ;
 scalar_t__ oo_objects (void*) ;

__attribute__((used)) static int calculate_sizes(struct kmem_cache *s, int forced_order)
{
 unsigned long flags = s->flags;
 unsigned long size = s->objsize;
 unsigned long align = s->align;
 int order;






 size = ALIGN(size, sizeof(void *));
 s->inuse = size;

 if (((flags & (SLAB_DESTROY_BY_RCU | SLAB_POISON)) ||
  s->ctor)) {
  s->offset = size;
  size += sizeof(void *);
 }
 align = calculate_alignment(flags, align, s->objsize);
 s->align = align;






 size = ALIGN(size, align);
 s->size = size;
 if (forced_order >= 0)
  order = forced_order;
 else
  order = calculate_order(size);

 if (order < 0)
  return 0;

 s->allocflags = 0;
 if (order)
  s->allocflags |= __GFP_COMP;

 if (s->flags & SLAB_CACHE_DMA)
  s->allocflags |= SLUB_DMA;

 if (s->flags & SLAB_RECLAIM_ACCOUNT)
  s->allocflags |= __GFP_RECLAIMABLE;




 s->oo = oo_make(order, size);
 s->min = oo_make(get_order(size), size);
 if (oo_objects(s->oo) > oo_objects(s->max))
  s->max = s->oo;

 return !!oo_objects(s->oo);

}
