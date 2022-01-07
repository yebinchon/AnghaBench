
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa168fb_info {scalar_t__ reg_base; } ;


 int FB_SYNC_VERT_HIGH_ACT ;
 scalar_t__ LCD_SPU_DMA_CTRL1 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void set_dma_control1(struct pxa168fb_info *fbi, int sync)
{
 u32 x;






 x = readl(fbi->reg_base + LCD_SPU_DMA_CTRL1);
 x |= 0x2032ff81;





 if (!(sync & FB_SYNC_VERT_HIGH_ACT))
  x |= 0x08000000;

 writel(x, fbi->reg_base + LCD_SPU_DMA_CTRL1);
}
