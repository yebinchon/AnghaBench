
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buffparms {int flags; int dma; int bytes_in_use; int fragment_size; int nbufs; int qhead; int lock; } ;
struct audio_operations {struct dma_buffparms* dmap_out; } ;


 int DMA_NODMA ;
 struct audio_operations** audio_devs ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int) ;
 int disable_dma (int) ;
 int do_outputintr (int,int) ;
 int enable_dma (int) ;
 int get_dma_residue (int) ;
 int isa_dma_bridge_buggy ;
 int release_dma_lock (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void DMAbuf_outputintr(int dev, int notify_only)
{
 struct audio_operations *adev = audio_devs[dev];
 unsigned long flags;
 struct dma_buffparms *dmap = adev->dmap_out;

 spin_lock_irqsave(&dmap->lock,flags);
 if (!(dmap->flags & DMA_NODMA)) {
  int chan = dmap->dma, pos, n;
  unsigned long f;

  f=claim_dma_lock();

  if(!isa_dma_bridge_buggy)
   disable_dma(dmap->dma);
  clear_dma_ff(chan);
  pos = dmap->bytes_in_use - get_dma_residue(chan);
  if(!isa_dma_bridge_buggy)
   enable_dma(dmap->dma);
  release_dma_lock(f);

  pos = pos / dmap->fragment_size;
  if (pos < 0 || pos >= dmap->nbufs)
   pos = 0;
  n = 0;
  while (dmap->qhead != pos && n++ < dmap->nbufs)
   do_outputintr(dev, notify_only);
 }
 else
  do_outputintr(dev, notify_only);
 spin_unlock_irqrestore(&dmap->lock,flags);
}
