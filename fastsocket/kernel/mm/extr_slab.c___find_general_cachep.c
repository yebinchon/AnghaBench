
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct cache_sizes {size_t cs_size; struct kmem_cache* cs_cachep; struct kmem_cache* cs_dmacachep; } ;
typedef int gfp_t ;


 int BUG_ON (int ) ;
 int GFP_DMA ;
 size_t INDEX_AC ;
 struct kmem_cache* ZERO_SIZE_PTR ;
 struct cache_sizes* malloc_sizes ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct kmem_cache *__find_general_cachep(size_t size,
       gfp_t gfpflags)
{
 struct cache_sizes *csizep = malloc_sizes;
 if (!size)
  return ZERO_SIZE_PTR;

 while (size > csizep->cs_size)
  csizep++;
 return csizep->cs_cachep;
}
