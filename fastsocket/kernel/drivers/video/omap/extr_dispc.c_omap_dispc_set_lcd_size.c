
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int DISPC_SIZE_LCD ;
 int FLD_MASK (int,int) ;
 int MOD_REG_FLD (int ,int,int) ;
 int enable_lcd_clocks (int) ;

void omap_dispc_set_lcd_size(int x, int y)
{
 BUG_ON((x > (1 << 11)) || (y > (1 << 11)));
 enable_lcd_clocks(1);
 MOD_REG_FLD(DISPC_SIZE_LCD, FLD_MASK(16, 11) | FLD_MASK(0, 11),
   ((y - 1) << 16) | (x - 1));
 enable_lcd_clocks(0);
}
