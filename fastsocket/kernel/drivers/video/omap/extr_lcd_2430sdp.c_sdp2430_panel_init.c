
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int dummy; } ;
struct lcd_panel {int dummy; } ;


 int SDP2430_LCD_PANEL_BACKLIGHT_GPIO ;
 int SDP2430_LCD_PANEL_ENABLE_GPIO ;
 int SDP3430_LCD_PANEL_BACKLIGHT_GPIO ;
 int SDP3430_LCD_PANEL_ENABLE_GPIO ;
 int backlight_gpio ;
 int enable_gpio ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 scalar_t__ machine_is_omap_3430sdp () ;

__attribute__((used)) static int sdp2430_panel_init(struct lcd_panel *panel,
    struct omapfb_device *fbdev)
{
 if (machine_is_omap_3430sdp()) {
  enable_gpio = SDP3430_LCD_PANEL_ENABLE_GPIO;
  backlight_gpio = SDP3430_LCD_PANEL_BACKLIGHT_GPIO;
 } else {
  enable_gpio = SDP2430_LCD_PANEL_ENABLE_GPIO;
  backlight_gpio = SDP2430_LCD_PANEL_BACKLIGHT_GPIO;
 }

 gpio_request(enable_gpio, "LCD enable");
 gpio_request(backlight_gpio, "LCD bl");
 gpio_direction_output(enable_gpio, 0);
 gpio_direction_output(backlight_gpio, 0);

 return 0;
}
