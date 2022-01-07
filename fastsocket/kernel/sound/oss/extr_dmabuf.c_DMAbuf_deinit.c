
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_operations {int flags; int dmap_in; int dmap_out; } ;


 scalar_t__ DMAP_KEEP_ON_CLOSE ;
 int DMA_DUPLEX ;
 struct audio_operations** audio_devs ;
 scalar_t__ sound_dmap_flag ;
 int sound_free_dmap (int ) ;

void DMAbuf_deinit(int dev)
{
 struct audio_operations *adev = audio_devs[dev];

 if (!adev)
  return;


 if (sound_dmap_flag == DMAP_KEEP_ON_CLOSE) {
  sound_free_dmap(adev->dmap_out);
  if (adev->flags & DMA_DUPLEX)
   sound_free_dmap(adev->dmap_in);
 }
}
