
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int OMAP_PWL_CLK_ENABLE ;
 int OMAP_PWL_ENABLE ;
 int PWL ;
 int gpio_set_value (int,int) ;
 int omap_cfg_reg (int ) ;
 int omap_writeb (int,int ) ;

__attribute__((used)) static int osk_panel_enable(struct lcd_panel *panel)
{

 omap_cfg_reg(PWL);


 omap_writeb(0x01, OMAP_PWL_CLK_ENABLE);


 omap_writeb(0xFF, OMAP_PWL_ENABLE);


 gpio_set_value(2, 1);

 return 0;
}
