
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {unsigned int boundary; unsigned int allocation; unsigned int size; } ;
struct dma_page {scalar_t__ vaddr; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pool_initialise_page(struct dma_pool *pool, struct dma_page *page)
{
 unsigned int offset = 0;
 unsigned int next_boundary = pool->boundary;

 do {
  unsigned int next = offset + pool->size;
  if (unlikely((next + pool->size) >= next_boundary)) {
   next = next_boundary;
   next_boundary += pool->boundary;
  }
  *(int *)(page->vaddr + offset) = next;
  offset = next;
 } while (offset < pool->allocation);
}
