
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {size_t free; int nodeid; int inuse; } ;
struct kmem_cache {int dummy; } ;
typedef size_t kmem_bufctl_t ;


 size_t BUFCTL_FREE ;
 int WARN_ON (int) ;
 void* index_to_obj (struct kmem_cache*,struct slab*,size_t) ;
 size_t* slab_bufctl (struct slab*) ;

__attribute__((used)) static void *slab_get_obj(struct kmem_cache *cachep, struct slab *slabp,
    int nodeid)
{
 void *objp = index_to_obj(cachep, slabp, slabp->free);
 kmem_bufctl_t next;

 slabp->inuse++;
 next = slab_bufctl(slabp)[slabp->free];




 slabp->free = next;

 return objp;
}
