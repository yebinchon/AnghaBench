
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tusb_omap_dma_ch {int dmareq; int sync_dev; int tbase; } ;


 int TUSB_DMA_EP_MAP ;
 int musb_readl (int ,int ) ;
 int musb_writel (int ,int ,int) ;

__attribute__((used)) static inline void tusb_omap_dma_free_dmareq(struct tusb_omap_dma_ch *chdat)
{
 u32 reg;

 if (!chdat || chdat->dmareq < 0)
  return;

 reg = musb_readl(chdat->tbase, TUSB_DMA_EP_MAP);
 reg &= ~(0x1f << (chdat->dmareq * 5));
 musb_writel(chdat->tbase, TUSB_DMA_EP_MAP, reg);

 chdat->dmareq = -1;
 chdat->sync_dev = -1;
}
