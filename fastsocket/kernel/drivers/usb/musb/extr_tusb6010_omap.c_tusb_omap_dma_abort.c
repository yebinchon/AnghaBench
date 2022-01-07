
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tusb_omap_dma_ch {struct tusb_omap_dma* tusb_dma; } ;
struct tusb_omap_dma {int ch; int dmareq; int sync_dev; int multichannel; } ;
struct dma_channel {int status; } ;


 int MUSB_DMA_STATUS_FREE ;
 int omap_free_dma (int) ;
 int omap_stop_dma (int) ;
 struct tusb_omap_dma_ch* to_chdat (struct dma_channel*) ;

__attribute__((used)) static int tusb_omap_dma_abort(struct dma_channel *channel)
{
 struct tusb_omap_dma_ch *chdat = to_chdat(channel);
 struct tusb_omap_dma *tusb_dma = chdat->tusb_dma;

 if (!tusb_dma->multichannel) {
  if (tusb_dma->ch >= 0) {
   omap_stop_dma(tusb_dma->ch);
   omap_free_dma(tusb_dma->ch);
   tusb_dma->ch = -1;
  }

  tusb_dma->dmareq = -1;
  tusb_dma->sync_dev = -1;
 }

 channel->status = MUSB_DMA_STATUS_FREE;

 return 0;
}
