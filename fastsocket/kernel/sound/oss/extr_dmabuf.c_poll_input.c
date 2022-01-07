
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dma_buffparms {int mapping_flags; scalar_t__ dma_mode; scalar_t__ qlen; int lock; } ;
struct audio_operations {int open_mode; int enable_bits; scalar_t__ go; struct dma_buffparms* dmap_in; } ;
typedef int poll_table ;


 int DMA_MAP_MAPPED ;
 int DMAbuf_activate_recording (int,struct dma_buffparms*) ;
 scalar_t__ DMODE_INPUT ;
 scalar_t__ DMODE_NONE ;
 int OPEN_READ ;
 int PCM_ENABLE_INPUT ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 struct audio_operations** audio_devs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int poll_input(struct file * file, int dev, poll_table *wait)
{
 struct audio_operations *adev = audio_devs[dev];
 struct dma_buffparms *dmap = adev->dmap_in;

 if (!(adev->open_mode & OPEN_READ))
  return 0;
 if (dmap->mapping_flags & DMA_MAP_MAPPED) {
  if (dmap->qlen)
   return POLLIN | POLLRDNORM;
  return 0;
 }
 if (dmap->dma_mode != DMODE_INPUT) {
  if (dmap->dma_mode == DMODE_NONE &&
      adev->enable_bits & PCM_ENABLE_INPUT &&
      !dmap->qlen && adev->go) {
   unsigned long flags;

   spin_lock_irqsave(&dmap->lock,flags);
   DMAbuf_activate_recording(dev, dmap);
   spin_unlock_irqrestore(&dmap->lock,flags);
  }
  return 0;
 }
 if (!dmap->qlen)
  return 0;
 return POLLIN | POLLRDNORM;
}
