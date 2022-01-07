
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa168fb_info {int pix_fmt; int panel_rbswap; scalar_t__ reg_base; scalar_t__ active; } ;


 scalar_t__ LCD_SPU_DMA_CTRL0 ;
 int PIX_FMT_PSEUDOCOLOR ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void set_dma_control0(struct pxa168fb_info *fbi)
{
 u32 x;




 x = readl(fbi->reg_base + LCD_SPU_DMA_CTRL0);
 x |= fbi->active ? 0x00000100 : 0;
 fbi->active = 0;





 if (fbi->pix_fmt == PIX_FMT_PSEUDOCOLOR)
  x |= 0x10000000;




 x &= ~(0xF << 16);
 x |= (fbi->pix_fmt >> 1) << 16;






 x &= ~(1 << 12);
 x |= ((fbi->pix_fmt & 1) ^ (fbi->panel_rbswap)) << 12;

 writel(x, fbi->reg_base + LCD_SPU_DMA_CTRL0);
}
