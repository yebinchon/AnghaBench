
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {unsigned int size; } ;



unsigned int kmem_cache_size(struct kmem_cache *c)
{
 return c->size;
}
