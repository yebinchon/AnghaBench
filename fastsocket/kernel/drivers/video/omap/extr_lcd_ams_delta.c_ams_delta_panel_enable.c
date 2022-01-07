
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int AMS_DELTA_DEFAULT_CONTRAST ;
 int AMS_DELTA_LATCH2_LCD_NDISP ;
 int AMS_DELTA_LATCH2_LCD_VBLEN ;
 int OMAP_PWL_CLK_ENABLE ;
 int OMAP_PWL_ENABLE ;
 int ams_delta_latch2_write (int ,int ) ;
 int omap_writeb (int,int ) ;

__attribute__((used)) static int ams_delta_panel_enable(struct lcd_panel *panel)
{
 ams_delta_latch2_write(AMS_DELTA_LATCH2_LCD_NDISP,
   AMS_DELTA_LATCH2_LCD_NDISP);
 ams_delta_latch2_write(AMS_DELTA_LATCH2_LCD_VBLEN,
   AMS_DELTA_LATCH2_LCD_VBLEN);

 omap_writeb(1, OMAP_PWL_CLK_ENABLE);
 omap_writeb(AMS_DELTA_DEFAULT_CONTRAST, OMAP_PWL_ENABLE);

 return 0;
}
