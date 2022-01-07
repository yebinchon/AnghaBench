
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LCD_RASTER_TIMING_0_REG ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static void lcd_cfg_horizontal_sync(int back_porch, int pulse_width,
  int front_porch)
{
 u32 reg;

 reg = lcdc_read(LCD_RASTER_TIMING_0_REG) & 0xf;
 reg |= ((back_porch & 0xff) << 24)
     | ((front_porch & 0xff) << 16)
     | ((pulse_width & 0x3f) << 10);
 lcdc_write(reg, LCD_RASTER_TIMING_0_REG);
}
