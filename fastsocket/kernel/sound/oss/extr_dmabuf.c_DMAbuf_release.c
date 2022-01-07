
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {int closing; int mapping_flags; scalar_t__ dma_mode; int lock; int bytes_in_use; int neutral_byte; int raw_buf; } ;
struct audio_operations {int open_mode; int flags; struct dma_buffparms* dmap_in; struct dma_buffparms* dmap_out; TYPE_1__* d; } ;
struct TYPE_2__ {int (* close ) (int) ;} ;


 int DMA_DUPLEX ;
 int DMA_MAP_MAPPED ;
 int DMAbuf_reset (int) ;
 int DMAbuf_sync (int) ;
 scalar_t__ DMODE_OUTPUT ;
 int OPEN_READ ;
 int OPEN_WRITE ;
 struct audio_operations** audio_devs ;
 int close_dmap (struct audio_operations*,struct dma_buffparms*) ;
 int current ;
 int memset (int ,int ,int ) ;
 int signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int) ;

int DMAbuf_release(int dev, int mode)
{
 struct audio_operations *adev = audio_devs[dev];
 struct dma_buffparms *dmap;
 unsigned long flags;

 dmap = adev->dmap_out;
 if (adev->open_mode & OPEN_WRITE)
  adev->dmap_out->closing = 1;

 if (adev->open_mode & OPEN_READ){
  adev->dmap_in->closing = 1;
  dmap = adev->dmap_in;
 }
 if (adev->open_mode & OPEN_WRITE)
  if (!(adev->dmap_out->mapping_flags & DMA_MAP_MAPPED))
   if (!signal_pending(current) && (adev->dmap_out->dma_mode == DMODE_OUTPUT))
    DMAbuf_sync(dev);
 if (adev->dmap_out->dma_mode == DMODE_OUTPUT)
  memset(adev->dmap_out->raw_buf, adev->dmap_out->neutral_byte, adev->dmap_out->bytes_in_use);

 DMAbuf_reset(dev);
 spin_lock_irqsave(&dmap->lock,flags);
 adev->d->close(dev);

 if (adev->open_mode & OPEN_WRITE)
  close_dmap(adev, adev->dmap_out);

 if (adev->open_mode == OPEN_READ ||
     (adev->open_mode != OPEN_WRITE &&
      (adev->flags & DMA_DUPLEX)))
  close_dmap(adev, adev->dmap_in);
 adev->open_mode = 0;
 spin_unlock_irqrestore(&dmap->lock,flags);
 return 0;
}
