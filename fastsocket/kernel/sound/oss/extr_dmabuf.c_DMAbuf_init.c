
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audio_operations {int parent_dev; int flags; TYPE_1__* dmap_out; TYPE_1__* dmap_in; TYPE_1__* dmaps; int * d; } ;
struct TYPE_2__ {int dma; int * raw_buf; } ;


 scalar_t__ DMAP_KEEP_ON_CLOSE ;
 int DMA_DUPLEX ;
 struct audio_operations** audio_devs ;
 int panic (char*,int) ;
 int sound_alloc_dmap (TYPE_1__*) ;
 scalar_t__ sound_dmap_flag ;

void DMAbuf_init(int dev, int dma1, int dma2)
{
 struct audio_operations *adev = audio_devs[dev];




 if (adev && adev->dmap_out == ((void*)0)) {
  if (adev->d == ((void*)0))
   panic("OSS: audio_devs[%d]->d == NULL\n", dev);

  if (adev->parent_dev) {
   int parent = adev->parent_dev - 1;
   adev->dmap_out = audio_devs[parent]->dmap_out;
   adev->dmap_in = audio_devs[parent]->dmap_in;
  } else {
   adev->dmap_out = adev->dmap_in = &adev->dmaps[0];
   adev->dmap_out->dma = dma1;
   if (adev->flags & DMA_DUPLEX) {
    adev->dmap_in = &adev->dmaps[1];
    adev->dmap_in->dma = dma2;
   }
  }

  if (sound_dmap_flag == DMAP_KEEP_ON_CLOSE) {
   if (adev->dmap_in->raw_buf == ((void*)0))
    sound_alloc_dmap(adev->dmap_in);
   if (adev->dmap_out->raw_buf == ((void*)0))
    sound_alloc_dmap(adev->dmap_out);
  }
 }
}
