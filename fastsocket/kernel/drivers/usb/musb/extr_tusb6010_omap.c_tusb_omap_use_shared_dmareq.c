
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tusb_omap_dma_ch {int epnum; int tbase; scalar_t__ tx; } ;


 int DBG (int,char*,int,int) ;
 int EAGAIN ;
 int TUSB_DMA_EP_MAP ;
 int musb_readl (int ,int ) ;
 int musb_writel (int ,int ,int) ;

__attribute__((used)) static inline int tusb_omap_use_shared_dmareq(struct tusb_omap_dma_ch *chdat)
{
 u32 reg = musb_readl(chdat->tbase, TUSB_DMA_EP_MAP);

 if (reg != 0) {
  DBG(3, "ep%i dmareq0 is busy for ep%i\n",
   chdat->epnum, reg & 0xf);
  return -EAGAIN;
 }

 if (chdat->tx)
  reg = (1 << 4) | chdat->epnum;
 else
  reg = chdat->epnum;

 musb_writel(chdat->tbase, TUSB_DMA_EP_MAP, reg);

 return 0;
}
