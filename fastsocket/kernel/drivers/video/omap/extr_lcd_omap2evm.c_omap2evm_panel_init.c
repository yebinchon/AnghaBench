
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int dummy; } ;
struct lcd_panel {int dummy; } ;


 int LCD_PANEL_ENABLE_GPIO ;
 int LCD_PANEL_INI ;
 int LCD_PANEL_LR ;
 int LCD_PANEL_QVGA ;
 int LCD_PANEL_RESB ;
 int LCD_PANEL_UD ;
 int TWL4030_MODULE_LED ;
 int TWL4030_MODULE_PWMA ;
 int TWL_LED_LEDEN ;
 int TWL_PWMA_PWMAOFF ;
 int TWL_PWMA_PWMAON ;
 int bklight_level ;
 int gpio_direction_output (int ,int) ;
 int gpio_request (int ,char*) ;
 int twl4030_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int omap2evm_panel_init(struct lcd_panel *panel,
    struct omapfb_device *fbdev)
{
 gpio_request(LCD_PANEL_ENABLE_GPIO, "LCD enable");
 gpio_request(LCD_PANEL_LR, "LCD lr");
 gpio_request(LCD_PANEL_UD, "LCD ud");
 gpio_request(LCD_PANEL_INI, "LCD ini");
 gpio_request(LCD_PANEL_QVGA, "LCD qvga");
 gpio_request(LCD_PANEL_RESB, "LCD resb");

 gpio_direction_output(LCD_PANEL_ENABLE_GPIO, 1);
 gpio_direction_output(LCD_PANEL_RESB, 1);
 gpio_direction_output(LCD_PANEL_INI, 1);
 gpio_direction_output(LCD_PANEL_QVGA, 0);
 gpio_direction_output(LCD_PANEL_LR, 1);
 gpio_direction_output(LCD_PANEL_UD, 1);

 twl4030_i2c_write_u8(TWL4030_MODULE_LED, 0x11, TWL_LED_LEDEN);
 twl4030_i2c_write_u8(TWL4030_MODULE_PWMA, 0x01, TWL_PWMA_PWMAON);
 twl4030_i2c_write_u8(TWL4030_MODULE_PWMA, 0x02, TWL_PWMA_PWMAOFF);
 bklight_level = 100;

 return 0;
}
