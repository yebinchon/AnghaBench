
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {int lock; scalar_t__ byte_counter; scalar_t__ user_counter; scalar_t__ qtail; scalar_t__ qhead; scalar_t__ qlen; int flags; } ;
struct audio_operations {int flags; struct dma_buffparms* dmap_in; TYPE_1__* d; } ;
struct TYPE_2__ {int (* halt_input ) (int) ;int (* halt_io ) (int) ;} ;


 int DMA_DUPLEX ;
 int DMA_STARTED ;
 struct audio_operations** audio_devs ;
 int reorganize_buffers (int,struct dma_buffparms*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int) ;
 int stub2 (int) ;

__attribute__((used)) static void dma_reset_input(int dev)
{
        struct audio_operations *adev = audio_devs[dev];
 unsigned long flags;
 struct dma_buffparms *dmap = adev->dmap_in;

 spin_lock_irqsave(&dmap->lock,flags);
 if (!(adev->flags & DMA_DUPLEX) || !adev->d->halt_input)
  adev->d->halt_io(dev);
 else
  adev->d->halt_input(dev);
 adev->dmap_in->flags &= ~DMA_STARTED;

 dmap->qlen = dmap->qhead = dmap->qtail = dmap->user_counter = 0;
 dmap->byte_counter = 0;
 reorganize_buffers(dev, adev->dmap_in, 1);
 spin_unlock_irqrestore(&dmap->lock,flags);
}
