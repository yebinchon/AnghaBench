
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; } ;


 int SLAB_DEBUG_OBJECTS ;
 int _RET_IP_ ;
 int __cache_free (struct kmem_cache*,void*) ;
 int debug_check_no_locks_freed (void*,int ) ;
 int debug_check_no_obj_freed (void*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int obj_size (struct kmem_cache*) ;
 int trace_kmem_cache_free (int ,void*) ;

void kmem_cache_free(struct kmem_cache *cachep, void *objp)
{
 unsigned long flags;

 local_irq_save(flags);
 debug_check_no_locks_freed(objp, obj_size(cachep));
 if (!(cachep->flags & SLAB_DEBUG_OBJECTS))
  debug_check_no_obj_freed(objp, obj_size(cachep));
 __cache_free(cachep, objp);
 local_irq_restore(flags);

 trace_kmem_cache_free(_RET_IP_, objp);
}
