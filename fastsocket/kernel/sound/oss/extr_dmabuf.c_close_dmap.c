
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buffparms {scalar_t__ dma; int flags; int dma_mode; } ;
struct audio_operations {int dummy; } ;


 scalar_t__ DMAP_FREE_ON_CLOSE ;
 int DMA_BUSY ;
 int DMODE_NONE ;
 unsigned long claim_dma_lock () ;
 int disable_dma (scalar_t__) ;
 int release_dma_lock (unsigned long) ;
 int sound_close_dma (scalar_t__) ;
 scalar_t__ sound_dmap_flag ;
 int sound_free_dmap (struct dma_buffparms*) ;

__attribute__((used)) static void close_dmap(struct audio_operations *adev, struct dma_buffparms *dmap)
{
 unsigned long flags;

 if (dmap->dma >= 0) {
  sound_close_dma(dmap->dma);
  flags=claim_dma_lock();
  disable_dma(dmap->dma);
  release_dma_lock(flags);
 }
 if (dmap->flags & DMA_BUSY)
  dmap->dma_mode = DMODE_NONE;
 dmap->flags &= ~DMA_BUSY;

 if (sound_dmap_flag == DMAP_FREE_ON_CLOSE)
  sound_free_dmap(dmap);
}
