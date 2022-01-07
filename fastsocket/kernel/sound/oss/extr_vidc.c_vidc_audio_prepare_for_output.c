
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audio_operations {TYPE_1__* dmap_out; } ;
struct TYPE_2__ {int flags; } ;


 int DMA_NODMA ;
 struct audio_operations** audio_devs ;
 int * dma_interrupt ;

__attribute__((used)) static int vidc_audio_prepare_for_output(int dev, int bsize, int bcount)
{
 struct audio_operations *adev = audio_devs[dev];

 dma_interrupt = ((void*)0);
 adev->dmap_out->flags |= DMA_NODMA;

 return 0;
}
