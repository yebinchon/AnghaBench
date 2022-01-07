
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; int next; } ;


 int BUG_ON (int) ;
 int SLAB_DESTROY_BY_RCU ;
 scalar_t__ __cache_shrink (struct kmem_cache*) ;
 int __kmem_cache_destroy (struct kmem_cache*) ;
 int cache_chain ;
 int cache_chain_mutex ;
 int get_online_cpus () ;
 scalar_t__ in_interrupt () ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_online_cpus () ;
 int rcu_barrier () ;
 int slab_error (struct kmem_cache*,char*) ;
 scalar_t__ unlikely (int) ;

void kmem_cache_destroy(struct kmem_cache *cachep)
{
 BUG_ON(!cachep || in_interrupt());


 get_online_cpus();
 mutex_lock(&cache_chain_mutex);



 list_del(&cachep->next);
 if (__cache_shrink(cachep)) {
  slab_error(cachep, "Can't free all objects");
  list_add(&cachep->next, &cache_chain);
  mutex_unlock(&cache_chain_mutex);
  put_online_cpus();
  return;
 }

 if (unlikely(cachep->flags & SLAB_DESTROY_BY_RCU))
  rcu_barrier();

 __kmem_cache_destroy(cachep);
 mutex_unlock(&cache_chain_mutex);
 put_online_cpus();
}
