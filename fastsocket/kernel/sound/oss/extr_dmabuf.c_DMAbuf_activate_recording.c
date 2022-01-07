
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {scalar_t__ dma_mode; int fragment_size; int flags; int qtail; scalar_t__ raw_buf_phys; int bytes_in_use; scalar_t__ needs_reorg; int nbufs; int lock; } ;
struct audio_operations {int open_mode; int enable_bits; int go; TYPE_1__* d; } ;
struct TYPE_2__ {int (* prepare_for_input ) (int,int,int ) ;int (* trigger ) (int,int) ;int (* start_input ) (int,scalar_t__,int,int ) ;} ;


 int DMA_ACTIVE ;
 int DMA_MODE_READ ;
 int DMAbuf_reset (int) ;
 int DMAbuf_sync (int) ;
 scalar_t__ DMODE_INPUT ;
 scalar_t__ DMODE_NONE ;
 scalar_t__ DMODE_OUTPUT ;
 int OPEN_READ ;
 int PCM_ENABLE_INPUT ;
 struct audio_operations** audio_devs ;
 int local_start_dma (struct audio_operations*,scalar_t__,int ,int ) ;
 int reorganize_buffers (int,struct dma_buffparms*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int,int,int ) ;
 int stub2 (int,scalar_t__,int,int ) ;
 int stub3 (int,int) ;

int DMAbuf_activate_recording(int dev, struct dma_buffparms *dmap)
{
 struct audio_operations *adev = audio_devs[dev];
 int err;

 if (!(adev->open_mode & OPEN_READ))
  return 0;
 if (!(adev->enable_bits & PCM_ENABLE_INPUT))
  return 0;
 if (dmap->dma_mode == DMODE_OUTPUT) {

  spin_unlock_irq(&dmap->lock);
  DMAbuf_sync(dev);
  DMAbuf_reset(dev);
  spin_lock_irq(&dmap->lock);
  dmap->dma_mode = DMODE_NONE;
 }
 if (!dmap->dma_mode) {
  reorganize_buffers(dev, dmap, 1);
  if ((err = adev->d->prepare_for_input(dev,
    dmap->fragment_size, dmap->nbufs)) < 0)
   return err;
  dmap->dma_mode = DMODE_INPUT;
 }
 if (!(dmap->flags & DMA_ACTIVE)) {
  if (dmap->needs_reorg)
   reorganize_buffers(dev, dmap, 0);
  local_start_dma(adev, dmap->raw_buf_phys, dmap->bytes_in_use, DMA_MODE_READ);
  adev->d->start_input(dev, dmap->raw_buf_phys + dmap->qtail * dmap->fragment_size,
         dmap->fragment_size, 0);
  dmap->flags |= DMA_ACTIVE;
  if (adev->d->trigger)
   adev->d->trigger(dev, adev->enable_bits * adev->go);
 }
 return 0;
}
