
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dma_buffer {int area; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 size_t PAGE_SIZE ;
 size_t get_order (size_t) ;
 int snd_dma_alloc_pages (int,struct device*,size_t,struct snd_dma_buffer*) ;

int snd_dma_alloc_pages_fallback(int type, struct device *device, size_t size,
     struct snd_dma_buffer *dmab)
{
 int err;

 while ((err = snd_dma_alloc_pages(type, device, size, dmab)) < 0) {
  size_t aligned_size;
  if (err != -ENOMEM)
   return err;
  if (size <= PAGE_SIZE)
   return -ENOMEM;
  aligned_size = PAGE_SIZE << get_order(size);
  if (size != aligned_size)
   size = aligned_size;
  else
   size >>= 1;
 }
 if (! dmab->area)
  return -ENOMEM;
 return 0;
}
