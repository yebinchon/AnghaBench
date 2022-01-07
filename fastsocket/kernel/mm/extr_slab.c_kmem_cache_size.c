
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 unsigned int obj_size (struct kmem_cache*) ;

unsigned int kmem_cache_size(struct kmem_cache *cachep)
{
 return obj_size(cachep);
}
