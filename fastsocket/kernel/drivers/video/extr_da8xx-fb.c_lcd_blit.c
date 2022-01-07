
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct da8xx_fb_par {int p_palette_base; int databuf_sz; } ;


 int LCD_DMA_FRM_BUF_BASE_ADDR_0_REG ;
 int LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG ;
 int LCD_PALETTE_LOAD_MODE (int ) ;
 int LCD_RASTER_CTRL_REG ;
 int LOAD_DATA ;
 int LOAD_PALETTE ;
 int PALETTE_AND_DATA ;
 int PALETTE_ONLY ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static void lcd_blit(int load_mode, struct da8xx_fb_par *par)
{
 u32 tmp = par->p_palette_base + par->databuf_sz - 4;
 u32 reg;


 lcdc_write(par->p_palette_base, LCD_DMA_FRM_BUF_BASE_ADDR_0_REG);
 lcdc_write(tmp, LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG);


 reg = lcdc_read(LCD_RASTER_CTRL_REG);
 reg &= ~(3 << 20);
 if (load_mode == LOAD_DATA)
  reg |= LCD_PALETTE_LOAD_MODE(PALETTE_AND_DATA);
 else if (load_mode == LOAD_PALETTE)
  reg |= LCD_PALETTE_LOAD_MODE(PALETTE_ONLY);

 lcdc_write(reg, LCD_RASTER_CTRL_REG);
}
