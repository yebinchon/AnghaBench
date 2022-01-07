
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int backlight_gpio ;
 int enable_gpio ;
 int gpio_free (int ) ;

__attribute__((used)) static void sdp2430_panel_cleanup(struct lcd_panel *panel)
{
 gpio_free(backlight_gpio);
 gpio_free(enable_gpio);
}
