
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPC_CONTROL ;
 int MOD_REG_FLD (int ,int,int) ;
 int enable_lcd_clocks (int) ;

void omap_dispc_enable_lcd_out(int enable)
{
 enable_lcd_clocks(1);
 MOD_REG_FLD(DISPC_CONTROL, 1, enable ? 1 : 0);
 enable_lcd_clocks(0);
}
