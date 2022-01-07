
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int LCD_PANEL_INI ;
 int LCD_PANEL_LR ;
 int LCD_PANEL_QVGA ;
 int LCD_PANEL_RESB ;
 int LCD_PANEL_UD ;
 int gpio_free (int ) ;

__attribute__((used)) static void omap3evm_panel_cleanup(struct lcd_panel *panel)
{
 gpio_free(LCD_PANEL_QVGA);
 gpio_free(LCD_PANEL_RESB);
 gpio_free(LCD_PANEL_INI);
 gpio_free(LCD_PANEL_UD);
 gpio_free(LCD_PANEL_LR);
}
