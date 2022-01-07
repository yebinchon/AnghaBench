
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int AMS_DELTA_LATCH2_LCD_NDISP ;
 int AMS_DELTA_LATCH2_LCD_VBLEN ;
 int ams_delta_latch2_write (int ,int ) ;

__attribute__((used)) static void ams_delta_panel_disable(struct lcd_panel *panel)
{
 ams_delta_latch2_write(AMS_DELTA_LATCH2_LCD_VBLEN, 0);
 ams_delta_latch2_write(AMS_DELTA_LATCH2_LCD_NDISP, 0);
}
