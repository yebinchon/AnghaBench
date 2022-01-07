
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ update_mode; int ext_mode; } ;


 scalar_t__ OMAPFB_AUTO_UPDATE ;
 TYPE_1__ dispc ;
 int enable_lcd_clocks (int) ;
 int load_palette () ;
 int omap_dispc_enable_lcd_out (int) ;
 int set_lcd_timings () ;

__attribute__((used)) static void omap_dispc_resume(void)
{
 if (dispc.update_mode == OMAPFB_AUTO_UPDATE) {
  enable_lcd_clocks(1);
  if (!dispc.ext_mode) {
   set_lcd_timings();
   load_palette();
  }
  omap_dispc_enable_lcd_out(1);
 }
}
