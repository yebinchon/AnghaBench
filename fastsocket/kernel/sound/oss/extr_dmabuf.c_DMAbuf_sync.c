
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {scalar_t__ dma_mode; scalar_t__ qlen; int flags; scalar_t__ underrun_count; int lock; int nbufs; } ;
struct audio_operations {int enable_bits; struct dma_buffparms* dmap_out; int out_sleeper; TYPE_1__* d; int go; } ;
struct TYPE_2__ {scalar_t__ (* local_qlen ) (int) ;} ;


 int DMA_ACTIVE ;
 int DMA_SYNCING ;
 int DMAbuf_launch_output (int,struct dma_buffparms*) ;
 scalar_t__ DMODE_NONE ;
 scalar_t__ DMODE_OUTPUT ;
 int PCM_ENABLE_OUTPUT ;
 struct audio_operations** audio_devs ;
 int current ;
 long dmabuf_timeout (struct dma_buffparms*) ;
 long interruptible_sleep_on_timeout (int *,long) ;
 int signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (int) ;

int DMAbuf_sync(int dev)
{
 struct audio_operations *adev = audio_devs[dev];
 unsigned long flags;
 int n = 0;
 struct dma_buffparms *dmap;

 if (!adev->go && !(adev->enable_bits & PCM_ENABLE_OUTPUT))
  return 0;

 if (adev->dmap_out->dma_mode == DMODE_OUTPUT) {
  dmap = adev->dmap_out;
  spin_lock_irqsave(&dmap->lock,flags);
  if (dmap->qlen > 0 && !(dmap->flags & DMA_ACTIVE))
   DMAbuf_launch_output(dev, dmap);
  adev->dmap_out->flags |= DMA_SYNCING;
  adev->dmap_out->underrun_count = 0;
  while (!signal_pending(current) && n++ < adev->dmap_out->nbufs &&
         adev->dmap_out->qlen && adev->dmap_out->underrun_count == 0) {
   long t = dmabuf_timeout(dmap);
   spin_unlock_irqrestore(&dmap->lock,flags);

   t = interruptible_sleep_on_timeout(&adev->out_sleeper, t);
   spin_lock_irqsave(&dmap->lock,flags);
   if (!t) {
    adev->dmap_out->flags &= ~DMA_SYNCING;
    spin_unlock_irqrestore(&dmap->lock,flags);
    return adev->dmap_out->qlen;
   }
  }
  adev->dmap_out->flags &= ~(DMA_SYNCING | DMA_ACTIVE);







  if (adev->d->local_qlen) {
   while (!signal_pending(current) &&
          adev->d->local_qlen(dev)){
    spin_unlock_irqrestore(&dmap->lock,flags);
    interruptible_sleep_on_timeout(&adev->out_sleeper,
              dmabuf_timeout(dmap));
    spin_lock_irqsave(&dmap->lock,flags);
   }
  }
  spin_unlock_irqrestore(&dmap->lock,flags);
 }
 adev->dmap_out->dma_mode = DMODE_NONE;
 return adev->dmap_out->qlen;
}
