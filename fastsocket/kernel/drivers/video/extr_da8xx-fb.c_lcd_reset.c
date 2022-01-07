
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_fb_par {int dummy; } ;


 int LCD_DMA_CTRL_REG ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_ENABLE ;
 int lcd_disable_raster (struct da8xx_fb_par*) ;
 int lcdc_read (int ) ;
 int lcdc_write (int ,int ) ;

__attribute__((used)) static void lcd_reset(struct da8xx_fb_par *par)
{

 if (lcdc_read(LCD_RASTER_CTRL_REG) & LCD_RASTER_ENABLE)
  lcd_disable_raster(par);


 lcdc_write(0, LCD_DMA_CTRL_REG);
 lcdc_write(0, LCD_RASTER_CTRL_REG);
}
