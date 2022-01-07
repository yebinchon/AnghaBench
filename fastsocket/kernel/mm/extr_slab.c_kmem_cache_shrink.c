
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int BUG_ON (int) ;
 int __cache_shrink (struct kmem_cache*) ;
 int cache_chain_mutex ;
 int get_online_cpus () ;
 scalar_t__ in_interrupt () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_online_cpus () ;

int kmem_cache_shrink(struct kmem_cache *cachep)
{
 int ret;
 BUG_ON(!cachep || in_interrupt());

 get_online_cpus();
 mutex_lock(&cache_chain_mutex);
 ret = __cache_shrink(cachep);
 mutex_unlock(&cache_chain_mutex);
 put_online_cpus();
 return ret;
}
