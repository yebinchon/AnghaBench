
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; int ctor; } ;
typedef int gfp_t ;


 int SLAB_NOTRACK ;
 int __GFP_NOTRACK ;
 int __GFP_ZERO ;
 int kmemcheck_enabled ;
 int kmemcheck_mark_initialized (void*,size_t) ;
 int kmemcheck_mark_uninitialized (void*,size_t) ;

void kmemcheck_slab_alloc(struct kmem_cache *s, gfp_t gfpflags, void *object,
     size_t size)
{




 if (gfpflags & __GFP_ZERO)
  return;


 if (s->flags & SLAB_NOTRACK)
  return;

 if (!kmemcheck_enabled || gfpflags & __GFP_NOTRACK) {
  kmemcheck_mark_initialized(object, size);
 } else if (!s->ctor) {




  kmemcheck_mark_uninitialized(object, size);
 }
}
