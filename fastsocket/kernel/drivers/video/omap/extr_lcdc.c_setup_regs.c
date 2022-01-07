
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct lcd_panel {int config; int bpp; int x_res; int hsw; int hfp; int hbp; int y_res; int vsw; int vfp; int vbp; unsigned long pcd; int pixel_clock; int acb; int name; } ;
struct TYPE_4__ {TYPE_1__* fbdev; int lcd_ck; } ;
struct TYPE_3__ {int dev; struct lcd_panel* panel; } ;


 int OMAP_LCDC_CONTROL ;
 int OMAP_LCDC_CTRL_LCD_TFT ;
 int OMAP_LCDC_PANEL_TFT ;
 int OMAP_LCDC_SIGNAL_MASK ;
 int OMAP_LCDC_TIMING0 ;
 int OMAP_LCDC_TIMING1 ;
 int OMAP_LCDC_TIMING2 ;
 int calc_ck_div (int,int,int*) ;
 unsigned long clk_get_rate (int ) ;
 int dev_warn (int ,char*,unsigned long,int ) ;
 TYPE_2__ lcdc ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;

__attribute__((used)) static void inline setup_regs(void)
{
 u32 l;
 struct lcd_panel *panel = lcdc.fbdev->panel;
 int is_tft = panel->config & OMAP_LCDC_PANEL_TFT;
 unsigned long lck;
 int pcd;

 l = omap_readl(OMAP_LCDC_CONTROL);
 l &= ~OMAP_LCDC_CTRL_LCD_TFT;
 l |= is_tft ? OMAP_LCDC_CTRL_LCD_TFT : 0;






 omap_writel(l, OMAP_LCDC_CONTROL);

 l = omap_readl(OMAP_LCDC_TIMING2);
 l &= ~(((1 << 6) - 1) << 20);
 l |= (panel->config & OMAP_LCDC_SIGNAL_MASK) << 20;
 omap_writel(l, OMAP_LCDC_TIMING2);

 l = panel->x_res - 1;
 l |= (panel->hsw - 1) << 10;
 l |= (panel->hfp - 1) << 16;
 l |= (panel->hbp - 1) << 24;
 omap_writel(l, OMAP_LCDC_TIMING0);

 l = panel->y_res - 1;
 l |= (panel->vsw - 1) << 10;
 l |= panel->vfp << 16;
 l |= panel->vbp << 24;
 omap_writel(l, OMAP_LCDC_TIMING1);

 l = omap_readl(OMAP_LCDC_TIMING2);
 l &= ~0xff;

 lck = clk_get_rate(lcdc.lcd_ck);

 if (!panel->pcd)
  calc_ck_div(is_tft, panel->pixel_clock * 1000, &pcd);
 else {
  dev_warn(lcdc.fbdev->dev,
      "Pixel clock divider value is obsolete.\n"
      "Try to set pixel_clock to %lu and pcd to 0 "
      "in drivers/video/omap/lcd_%s.c and submit a patch.\n",
   lck / panel->pcd / 1000, panel->name);

  pcd = panel->pcd;
 }
 l |= pcd & 0xff;
 l |= panel->acb << 8;
 omap_writel(l, OMAP_LCDC_TIMING2);


 panel->pixel_clock = lck / pcd / 1000;
}
