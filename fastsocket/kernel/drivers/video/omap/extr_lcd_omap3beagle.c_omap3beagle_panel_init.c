
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int dummy; } ;
struct lcd_panel {int dummy; } ;


 int LCD_PANEL_ENABLE_GPIO ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int omap3beagle_panel_init(struct lcd_panel *panel,
    struct omapfb_device *fbdev)
{
 gpio_request(LCD_PANEL_ENABLE_GPIO, "LCD enable");
 return 0;
}
