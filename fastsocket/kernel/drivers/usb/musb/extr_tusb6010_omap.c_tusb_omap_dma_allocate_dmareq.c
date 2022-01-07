
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tusb_omap_dma_ch {int epnum; int dmareq; int sync_dev; int tbase; scalar_t__ tx; } ;


 int EAGAIN ;
 int MAX_DMAREQ ;
 int const OMAP242X_DMA_EXT_DMAREQ2 ;
 int const OMAP242X_DMA_EXT_DMAREQ3 ;
 int const OMAP242X_DMA_EXT_DMAREQ4 ;
 int const OMAP242X_DMA_EXT_DMAREQ5 ;
 int const OMAP24XX_DMA_EXT_DMAREQ0 ;
 int const OMAP24XX_DMA_EXT_DMAREQ1 ;
 int TUSB_DMA_EP_MAP ;
 int musb_readl (int ,int ) ;
 int musb_writel (int ,int ,int) ;

__attribute__((used)) static inline int tusb_omap_dma_allocate_dmareq(struct tusb_omap_dma_ch *chdat)
{
 u32 reg = musb_readl(chdat->tbase, TUSB_DMA_EP_MAP);
 int i, dmareq_nr = -1;

 const int sync_dev[6] = {
  OMAP24XX_DMA_EXT_DMAREQ0,
  OMAP24XX_DMA_EXT_DMAREQ1,
  OMAP242X_DMA_EXT_DMAREQ2,
  OMAP242X_DMA_EXT_DMAREQ3,
  OMAP242X_DMA_EXT_DMAREQ4,
  OMAP242X_DMA_EXT_DMAREQ5,
 };

 for (i = 0; i < MAX_DMAREQ; i++) {
  int cur = (reg & (0xf << (i * 5))) >> (i * 5);
  if (cur == 0) {
   dmareq_nr = i;
   break;
  }
 }

 if (dmareq_nr == -1)
  return -EAGAIN;

 reg |= (chdat->epnum << (dmareq_nr * 5));
 if (chdat->tx)
  reg |= ((1 << 4) << (dmareq_nr * 5));
 musb_writel(chdat->tbase, TUSB_DMA_EP_MAP, reg);

 chdat->dmareq = dmareq_nr;
 chdat->sync_dev = sync_dev[chdat->dmareq];

 return 0;
}
