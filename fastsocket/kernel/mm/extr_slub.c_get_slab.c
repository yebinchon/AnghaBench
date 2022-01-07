
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int SLUB_DMA ;
 struct kmem_cache* ZERO_SIZE_PTR ;
 struct kmem_cache* dma_kmalloc_cache (int,int) ;
 int fls (size_t) ;
 struct kmem_cache* kmalloc_caches ;
 int* size_index ;
 size_t size_index_elem (size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct kmem_cache *get_slab(size_t size, gfp_t flags)
{
 int index;

 if (size <= 192) {
  if (!size)
   return ZERO_SIZE_PTR;

  index = size_index[size_index_elem(size)];
 } else
  index = fls(size - 1);






 return &kmalloc_caches[index];
}
