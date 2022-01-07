
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab_rcu {int head; void* addr; struct kmem_cache* cachep; } ;
struct slab {int colouroff; int s_mem; } ;
struct kmem_cache {int flags; int slabp_cache; } ;


 scalar_t__ OFF_SLAB (struct kmem_cache*) ;
 int SLAB_DESTROY_BY_RCU ;
 int call_rcu (int *,int ) ;
 int kmem_cache_free (int ,struct slab*) ;
 int kmem_freepages (struct kmem_cache*,void*) ;
 int kmem_rcu_free ;
 int slab_destroy_debugcheck (struct kmem_cache*,struct slab*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void slab_destroy(struct kmem_cache *cachep, struct slab *slabp)
{
 void *addr = slabp->s_mem - slabp->colouroff;

 slab_destroy_debugcheck(cachep, slabp);
 if (unlikely(cachep->flags & SLAB_DESTROY_BY_RCU)) {
  struct slab_rcu *slab_rcu;

  slab_rcu = (struct slab_rcu *)slabp;
  slab_rcu->cachep = cachep;
  slab_rcu->addr = addr;
  call_rcu(&slab_rcu->head, kmem_rcu_free);
 } else {
  kmem_freepages(cachep, addr);
  if (OFF_SLAB(cachep))
   kmem_cache_free(cachep->slabp_cache, slabp);
 }
}
