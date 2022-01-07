
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int LCD_PANEL_BACKLIGHT_GPIO ;
 int LCD_PANEL_ENABLE_GPIO ;
 int PM_RECEIVER ;
 int TWL4030_VPLL2_DEDICATED ;
 int TWL4030_VPLL2_DEV_GRP ;
 int gpio_direction_output (int ,int ) ;
 int msleep (int) ;
 int t2_out (int ,int,int ) ;

__attribute__((used)) static void ldp_panel_disable(struct lcd_panel *panel)
{
 gpio_direction_output(LCD_PANEL_ENABLE_GPIO, 0);
 gpio_direction_output(LCD_PANEL_BACKLIGHT_GPIO, 0);

 t2_out(PM_RECEIVER, 0x0, TWL4030_VPLL2_DEDICATED);
 t2_out(PM_RECEIVER, 0x0, TWL4030_VPLL2_DEV_GRP);
 msleep(4);
}
