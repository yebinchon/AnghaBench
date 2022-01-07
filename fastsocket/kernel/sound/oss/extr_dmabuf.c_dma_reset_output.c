
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {int flags; scalar_t__ underrun_count; int lock; scalar_t__ user_counter; scalar_t__ qtail; scalar_t__ qhead; scalar_t__ qlen; scalar_t__ byte_counter; int dma; } ;
struct audio_operations {int flags; struct dma_buffparms* dmap_out; TYPE_1__* d; int out_sleeper; } ;
struct TYPE_2__ {int (* halt_output ) (int) ;int (* halt_io ) (int) ;} ;


 int DMA_ACTIVE ;
 int DMA_DUPLEX ;
 int DMA_STARTED ;
 int DMA_SYNCING ;
 struct audio_operations** audio_devs ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int current ;
 int disable_dma (int ) ;
 int dmabuf_timeout (struct dma_buffparms*) ;
 int interruptible_sleep_on_timeout (int *,int ) ;
 int release_dma_lock (unsigned long) ;
 int reorganize_buffers (int,struct dma_buffparms*,int ) ;
 int signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int) ;
 int stub2 (int) ;

__attribute__((used)) static void dma_reset_output(int dev)
{
 struct audio_operations *adev = audio_devs[dev];
 unsigned long flags,f ;
 struct dma_buffparms *dmap = adev->dmap_out;

 if (!(dmap->flags & DMA_STARTED))
  return;




 spin_lock_irqsave(&dmap->lock,flags);
 adev->dmap_out->flags |= DMA_SYNCING;

 adev->dmap_out->underrun_count = 0;
 if (!signal_pending(current) && adev->dmap_out->qlen &&
     adev->dmap_out->underrun_count == 0){
  spin_unlock_irqrestore(&dmap->lock,flags);
  interruptible_sleep_on_timeout(&adev->out_sleeper,
            dmabuf_timeout(dmap));
  spin_lock_irqsave(&dmap->lock,flags);
 }
 adev->dmap_out->flags &= ~(DMA_SYNCING | DMA_ACTIVE);




 if (!(adev->flags & DMA_DUPLEX) || !adev->d->halt_output)
  adev->d->halt_io(dev);
 else
  adev->d->halt_output(dev);
 adev->dmap_out->flags &= ~DMA_STARTED;

 f=claim_dma_lock();
 clear_dma_ff(dmap->dma);
 disable_dma(dmap->dma);
 release_dma_lock(f);

 dmap->byte_counter = 0;
 reorganize_buffers(dev, adev->dmap_out, 0);
 dmap->qlen = dmap->qhead = dmap->qtail = dmap->user_counter = 0;
 spin_unlock_irqrestore(&dmap->lock,flags);
}
