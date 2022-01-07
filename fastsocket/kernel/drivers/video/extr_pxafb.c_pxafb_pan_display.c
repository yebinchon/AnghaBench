
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxafb_info {scalar_t__ state; int lccr0; int* fdadr; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;


 scalar_t__ C_ENABLE ;
 int DMA_BASE ;
 int DMA_MAX ;
 int FBR0 ;
 int FBR1 ;
 int LCCR0_SDS ;
 int lcd_writel (struct pxafb_info*,int ,int) ;
 int setup_base_frame (struct pxafb_info*,int) ;

__attribute__((used)) static int pxafb_pan_display(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct pxafb_info *fbi = (struct pxafb_info *)info;
 int dma = DMA_MAX + DMA_BASE;

 if (fbi->state != C_ENABLE)
  return 0;

 setup_base_frame(fbi, 1);

 if (fbi->lccr0 & LCCR0_SDS)
  lcd_writel(fbi, FBR1, fbi->fdadr[dma + 1] | 0x1);

 lcd_writel(fbi, FBR0, fbi->fdadr[dma] | 0x1);
 return 0;
}
