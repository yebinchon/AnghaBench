
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct da8xx_fb_par {int palette_sz; int databuf_sz; } ;


 int EINVAL ;
 int LCD_DMA_CTRL_REG ;
 int LCD_DUAL_FRAME_BUFFER_ENABLE ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_ORDER ;
 int LCD_RASTER_TIMING_0_REG ;
 int LCD_RASTER_TIMING_1_REG ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static int lcd_cfg_frame_buffer(struct da8xx_fb_par *par, u32 width, u32 height,
  u32 bpp, u32 raster_order)
{
 u32 bpl, reg;


 reg = lcdc_read(LCD_DMA_CTRL_REG);
 lcdc_write(reg & ~LCD_DUAL_FRAME_BUFFER_ENABLE,
      LCD_DMA_CTRL_REG);



 width &= 0x3f0;
 reg = lcdc_read(LCD_RASTER_TIMING_0_REG);
 reg &= 0xfffffc00;
 reg |= ((width >> 4) - 1) << 4;
 lcdc_write(reg, LCD_RASTER_TIMING_0_REG);


 reg = lcdc_read(LCD_RASTER_TIMING_1_REG);
 reg = ((height - 1) & 0x3ff) | (reg & 0xfffffc00);
 lcdc_write(reg, LCD_RASTER_TIMING_1_REG);


 reg = lcdc_read(LCD_RASTER_CTRL_REG) & ~(1 << 8);
 if (raster_order)
  reg |= LCD_RASTER_ORDER;
 lcdc_write(reg, LCD_RASTER_CTRL_REG);

 switch (bpp) {
 case 1:
 case 2:
 case 4:
 case 16:
  par->palette_sz = 16 * 2;
  break;

 case 8:
  par->palette_sz = 256 * 2;
  break;

 default:
  return -EINVAL;
 }

 bpl = width * bpp / 8;
 par->databuf_sz = height * bpl + par->palette_sz;

 return 0;
}
