
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab_rcu {int addr; struct kmem_cache* cachep; } ;
struct rcu_head {int dummy; } ;
struct kmem_cache {int slabp_cache; } ;


 scalar_t__ OFF_SLAB (struct kmem_cache*) ;
 int kmem_cache_free (int ,struct slab_rcu*) ;
 int kmem_freepages (struct kmem_cache*,int ) ;

__attribute__((used)) static void kmem_rcu_free(struct rcu_head *head)
{
 struct slab_rcu *slab_rcu = (struct slab_rcu *)head;
 struct kmem_cache *cachep = slab_rcu->cachep;

 kmem_freepages(cachep, slab_rcu->addr);
 if (OFF_SLAB(cachep))
  kmem_cache_free(cachep->slabp_cache, slab_rcu);
}
