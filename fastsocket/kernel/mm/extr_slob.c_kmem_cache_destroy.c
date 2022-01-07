
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; } ;


 int SLAB_DESTROY_BY_RCU ;
 int kmemleak_free (struct kmem_cache*) ;
 int rcu_barrier () ;
 int slob_free (struct kmem_cache*,int) ;

void kmem_cache_destroy(struct kmem_cache *c)
{
 kmemleak_free(c);
 if (c->flags & SLAB_DESTROY_BY_RCU)
  rcu_barrier();
 slob_free(c, sizeof(struct kmem_cache));
}
