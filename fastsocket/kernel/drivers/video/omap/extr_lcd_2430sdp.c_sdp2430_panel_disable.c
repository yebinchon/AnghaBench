
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 scalar_t__ OMAP3430_REV_ES1_0 ;
 int PM_RECEIVER ;
 int TWL4030_VPLL2_DEDICATED ;
 int TWL4030_VPLL2_DEV_GRP ;
 int backlight_gpio ;
 int enable_gpio ;
 int gpio_set_value (int ,int ) ;
 int msleep (int) ;
 scalar_t__ omap_rev () ;
 int t2_out (int ,int,int ) ;

__attribute__((used)) static void sdp2430_panel_disable(struct lcd_panel *panel)
{
 gpio_set_value(enable_gpio, 0);
 gpio_set_value(backlight_gpio, 0);
 if (omap_rev() > OMAP3430_REV_ES1_0) {
  t2_out(PM_RECEIVER, 0x0, TWL4030_VPLL2_DEDICATED);
  t2_out(PM_RECEIVER, 0x0, TWL4030_VPLL2_DEV_GRP);
  msleep(4);
 }
}
