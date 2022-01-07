
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int LCD_PANEL_ENABLE_GPIO ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void omap2evm_panel_disable(struct lcd_panel *panel)
{
 gpio_set_value(LCD_PANEL_ENABLE_GPIO, 1);
}
