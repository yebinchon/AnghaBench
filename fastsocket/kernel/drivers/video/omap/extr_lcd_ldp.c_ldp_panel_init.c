
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int dummy; } ;
struct lcd_panel {int dummy; } ;


 int LCD_PANEL_BACKLIGHT_GPIO ;
 int LCD_PANEL_ENABLE_GPIO ;
 int LCD_PANEL_QVGA_GPIO ;
 int LCD_PANEL_RESET_GPIO ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int ldp_panel_init(struct lcd_panel *panel,
    struct omapfb_device *fbdev)
{
 gpio_request(LCD_PANEL_RESET_GPIO, "lcd reset");
 gpio_request(LCD_PANEL_QVGA_GPIO, "lcd qvga");
 gpio_request(LCD_PANEL_ENABLE_GPIO, "lcd panel");
 gpio_request(LCD_PANEL_BACKLIGHT_GPIO, "lcd backlight");

 gpio_direction_output(LCD_PANEL_QVGA_GPIO, 0);
 gpio_direction_output(LCD_PANEL_RESET_GPIO, 0);
 gpio_direction_output(LCD_PANEL_ENABLE_GPIO, 0);
 gpio_direction_output(LCD_PANEL_BACKLIGHT_GPIO, 0);




 gpio_set_value(LCD_PANEL_QVGA_GPIO, 1);

 gpio_set_value(LCD_PANEL_RESET_GPIO, 1);

 return 0;
}
