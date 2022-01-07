
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int EIO ;
 int ENABLE_VAUX3_DEDICATED ;
 int ENABLE_VAUX3_DEV_GRP ;
 int ENABLE_VPLL2_DEDICATED ;
 int ENABLE_VPLL2_DEV_GRP ;
 int LCD_PANEL_BACKLIGHT_GPIO ;
 int LCD_PANEL_ENABLE_GPIO ;
 int PM_RECEIVER ;
 int TWL4030_VAUX3_DEDICATED ;
 int TWL4030_VAUX3_DEV_GRP ;
 int TWL4030_VPLL2_DEDICATED ;
 int TWL4030_VPLL2_DEV_GRP ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ t2_out (int ,int ,int ) ;

__attribute__((used)) static int ldp_panel_enable(struct lcd_panel *panel)
{
 if (0 != t2_out(PM_RECEIVER, ENABLE_VPLL2_DEDICATED,
   TWL4030_VPLL2_DEDICATED))
  return -EIO;
 if (0 != t2_out(PM_RECEIVER, ENABLE_VPLL2_DEV_GRP,
   TWL4030_VPLL2_DEV_GRP))
  return -EIO;

 gpio_direction_output(LCD_PANEL_ENABLE_GPIO, 1);
 gpio_direction_output(LCD_PANEL_BACKLIGHT_GPIO, 1);

 if (0 != t2_out(PM_RECEIVER, ENABLE_VAUX3_DEDICATED,
    TWL4030_VAUX3_DEDICATED))
  return -EIO;
 if (0 != t2_out(PM_RECEIVER, ENABLE_VAUX3_DEV_GRP,
    TWL4030_VAUX3_DEV_GRP))
  return -EIO;

 return 0;
}
