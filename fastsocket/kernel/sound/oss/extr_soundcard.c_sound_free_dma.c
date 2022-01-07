
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DMA_MAP_UNAVAIL ;
 scalar_t__* dma_alloc_map ;
 int free_dma (int) ;

void sound_free_dma(int chn)
{
 if (dma_alloc_map[chn] == DMA_MAP_UNAVAIL) {

  return;
 }
 free_dma(chn);
 dma_alloc_map[chn] = DMA_MAP_UNAVAIL;
}
