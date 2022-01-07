
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct da8xx_fb_par {int dummy; } ;


 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_ENABLE ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static void lcd_disable_raster(struct da8xx_fb_par *par)
{
 u32 reg;

 reg = lcdc_read(LCD_RASTER_CTRL_REG);
 if (reg & LCD_RASTER_ENABLE)
  lcdc_write(reg & ~LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
}
