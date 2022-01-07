
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ update_mode; } ;


 scalar_t__ OMAPFB_AUTO_UPDATE ;
 int disable_controller () ;
 TYPE_1__ lcdc ;
 int omap_stop_lcd_dma () ;

__attribute__((used)) static void omap_lcdc_suspend(void)
{
 if (lcdc.update_mode == OMAPFB_AUTO_UPDATE) {
  disable_controller();
  omap_stop_lcd_dma();
 }
}
