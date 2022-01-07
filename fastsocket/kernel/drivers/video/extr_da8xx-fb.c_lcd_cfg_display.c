
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lcd_ctrl_config {scalar_t__ invert_frm_clock; scalar_t__ invert_line_clock; scalar_t__ sync_edge; scalar_t__ sync_ctrl; int stn_565_mode; int tft_alt_mode; int mono_8bit_mode; TYPE_1__* p_disp_panel; } ;
struct TYPE_2__ {int panel_shade; } ;




 int EINVAL ;
 int LCD_INVERT_FRAME_CLOCK ;
 int LCD_INVERT_LINE_CLOCK ;
 int LCD_MONOCHROME_MODE ;
 int LCD_MONO_8BIT_MODE ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_TIMING_2_REG ;
 int LCD_STN_565_ENABLE ;
 int LCD_SYNC_CTRL ;
 int LCD_SYNC_EDGE ;
 int LCD_TFT_ALT_ENABLE ;
 int LCD_TFT_MODE ;
 int LCD_UNDERFLOW_INT_ENA ;

 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static int lcd_cfg_display(const struct lcd_ctrl_config *cfg)
{
 u32 reg;

 reg = lcdc_read(LCD_RASTER_CTRL_REG) & ~(LCD_TFT_MODE |
      LCD_MONO_8BIT_MODE |
      LCD_MONOCHROME_MODE);

 switch (cfg->p_disp_panel->panel_shade) {
 case 128:
  reg |= LCD_MONOCHROME_MODE;
  if (cfg->mono_8bit_mode)
   reg |= LCD_MONO_8BIT_MODE;
  break;
 case 130:
  reg |= LCD_TFT_MODE;
  if (cfg->tft_alt_mode)
   reg |= LCD_TFT_ALT_ENABLE;
  break;

 case 129:
  if (cfg->stn_565_mode)
   reg |= LCD_STN_565_ENABLE;
  break;

 default:
  return -EINVAL;
 }


 reg |= LCD_UNDERFLOW_INT_ENA;

 lcdc_write(reg, LCD_RASTER_CTRL_REG);

 reg = lcdc_read(LCD_RASTER_TIMING_2_REG);

 if (cfg->sync_ctrl)
  reg |= LCD_SYNC_CTRL;
 else
  reg &= ~LCD_SYNC_CTRL;

 if (cfg->sync_edge)
  reg |= LCD_SYNC_EDGE;
 else
  reg &= ~LCD_SYNC_EDGE;

 if (cfg->invert_line_clock)
  reg |= LCD_INVERT_LINE_CLOCK;
 else
  reg &= ~LCD_INVERT_LINE_CLOCK;

 if (cfg->invert_frm_clock)
  reg |= LCD_INVERT_FRAME_CLOCK;
 else
  reg &= ~LCD_INVERT_FRAME_CLOCK;

 lcdc_write(reg, LCD_RASTER_TIMING_2_REG);

 return 0;
}
