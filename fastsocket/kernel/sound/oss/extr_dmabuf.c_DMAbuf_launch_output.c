
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {int flags; int fragment_size; int* counts; size_t qhead; scalar_t__ raw_buf_phys; void* dma_mode; int bytes_in_use; int nbufs; } ;
struct audio_operations {int enable_bits; int go; int flags; TYPE_1__* d; } ;
struct TYPE_2__ {int (* trigger ) (int,int) ;int (* output_block ) (int,scalar_t__,int,int) ;scalar_t__ (* prepare_for_output ) (int,int,int ) ;} ;


 int DMA_ACTIVE ;
 int DMA_AUTOMODE ;
 int DMA_MODE_WRITE ;
 int DMA_NODMA ;
 int DMA_STARTED ;
 void* DMODE_OUTPUT ;
 int PCM_ENABLE_OUTPUT ;
 struct audio_operations** audio_devs ;
 int local_start_dma (struct audio_operations*,scalar_t__,int ,int ) ;
 int reorganize_buffers (int,struct dma_buffparms*,int ) ;
 scalar_t__ stub1 (int,int,int ) ;
 int stub2 (int,scalar_t__,int,int) ;
 int stub3 (int,int) ;

void DMAbuf_launch_output(int dev, struct dma_buffparms *dmap)
{
 struct audio_operations *adev = audio_devs[dev];

 if (!((adev->enable_bits * adev->go) & PCM_ENABLE_OUTPUT))
  return;
 dmap->dma_mode = DMODE_OUTPUT;

 if (!(dmap->flags & DMA_ACTIVE) || !(adev->flags & DMA_AUTOMODE) || (dmap->flags & DMA_NODMA)) {
  if (!(dmap->flags & DMA_STARTED)) {
   reorganize_buffers(dev, dmap, 0);
   if (adev->d->prepare_for_output(dev, dmap->fragment_size, dmap->nbufs))
    return;
   if (!(dmap->flags & DMA_NODMA))
    local_start_dma(adev, dmap->raw_buf_phys, dmap->bytes_in_use,DMA_MODE_WRITE);
   dmap->flags |= DMA_STARTED;
  }
  if (dmap->counts[dmap->qhead] == 0)
   dmap->counts[dmap->qhead] = dmap->fragment_size;
  dmap->dma_mode = DMODE_OUTPUT;
  adev->d->output_block(dev, dmap->raw_buf_phys + dmap->qhead * dmap->fragment_size,
          dmap->counts[dmap->qhead], 1);
  if (adev->d->trigger)
   adev->d->trigger(dev,adev->enable_bits * adev->go);
 }
 dmap->flags |= DMA_ACTIVE;
}
