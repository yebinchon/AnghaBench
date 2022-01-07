
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lcd_ck; int fbdev; int ext_mode; } ;


 int OMAP_LCDC_IRQ ;
 int cleanup_fbmem () ;
 int clk_disable (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,int ) ;
 int free_palette_ram () ;
 TYPE_1__ lcdc ;
 int omap_free_lcd_dma () ;

__attribute__((used)) static void omap_lcdc_cleanup(void)
{
 if (!lcdc.ext_mode)
  free_palette_ram();
 cleanup_fbmem();
 omap_free_lcd_dma();
 free_irq(OMAP_LCDC_IRQ, lcdc.fbdev);
 clk_disable(lcdc.lcd_ck);
 clk_put(lcdc.lcd_ck);
}
