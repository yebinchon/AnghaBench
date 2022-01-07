
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; int ctor; } ;


 int SLAB_DESTROY_BY_RCU ;
 int kmemcheck_mark_freed (void*,size_t) ;

void kmemcheck_slab_free(struct kmem_cache *s, void *object, size_t size)
{

 if (!s->ctor && !(s->flags & SLAB_DESTROY_BY_RCU))
  kmemcheck_mark_freed(object, size);
}
