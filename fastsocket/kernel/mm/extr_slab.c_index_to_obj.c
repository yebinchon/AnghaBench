
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {void* s_mem; } ;
struct kmem_cache {unsigned int buffer_size; } ;



__attribute__((used)) static inline void *index_to_obj(struct kmem_cache *cache, struct slab *slab,
     unsigned int idx)
{
 return slab->s_mem + cache->buffer_size * idx;
}
