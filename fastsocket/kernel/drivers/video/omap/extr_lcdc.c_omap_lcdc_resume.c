
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ update_mode; } ;


 scalar_t__ OMAPFB_AUTO_UPDATE ;
 int OMAP_LCDC_IRQ_DONE ;
 int OMAP_LCDC_LOAD_FRAME ;
 int enable_controller () ;
 int enable_irqs (int ) ;
 TYPE_1__ lcdc ;
 int load_palette () ;
 int set_load_mode (int ) ;
 int setup_lcd_dma () ;
 int setup_regs () ;

__attribute__((used)) static void omap_lcdc_resume(void)
{
 if (lcdc.update_mode == OMAPFB_AUTO_UPDATE) {
  setup_regs();
  load_palette();
  setup_lcd_dma();
  set_load_mode(OMAP_LCDC_LOAD_FRAME);
  enable_irqs(OMAP_LCDC_IRQ_DONE);
  enable_controller();
 }
}
