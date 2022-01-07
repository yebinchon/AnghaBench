
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int LCD_PANEL_BACKLIGHT_GPIO ;
 int LCD_PANEL_ENABLE_GPIO ;
 int LCD_PANEL_QVGA_GPIO ;
 int LCD_PANEL_RESET_GPIO ;
 int gpio_free (int ) ;

__attribute__((used)) static void ldp_panel_cleanup(struct lcd_panel *panel)
{
 gpio_free(LCD_PANEL_BACKLIGHT_GPIO);
 gpio_free(LCD_PANEL_ENABLE_GPIO);
 gpio_free(LCD_PANEL_QVGA_GPIO);
 gpio_free(LCD_PANEL_RESET_GPIO);
}
