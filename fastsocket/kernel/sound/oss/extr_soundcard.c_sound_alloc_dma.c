
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA_MAP_FREE ;
 int * dma_alloc_map ;
 int request_dma (int,char*) ;

int sound_alloc_dma(int chn, char *deviceID)
{
 int err;

 if ((err = request_dma(chn, deviceID)) != 0)
  return err;

 dma_alloc_map[chn] = DMA_MAP_FREE;

 return 0;
}
