
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct slab {int s_mem; } ;
struct kmem_cache {int reciprocal_buffer_size; } ;


 unsigned int reciprocal_divide (void*,int ) ;

__attribute__((used)) static inline unsigned int obj_to_index(const struct kmem_cache *cache,
     const struct slab *slab, void *obj)
{
 u32 offset = (obj - slab->s_mem);
 return reciprocal_divide(offset, cache->reciprocal_buffer_size);
}
