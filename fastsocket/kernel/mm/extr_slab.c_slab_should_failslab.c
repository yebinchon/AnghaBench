
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 struct kmem_cache cache_cache ;
 int obj_size (struct kmem_cache*) ;
 int should_failslab (int ,int ) ;

__attribute__((used)) static bool slab_should_failslab(struct kmem_cache *cachep, gfp_t flags)
{
 if (cachep == &cache_cache)
  return 0;

 return should_failslab(obj_size(cachep), flags);
}
