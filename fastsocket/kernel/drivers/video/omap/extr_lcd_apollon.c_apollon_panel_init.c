
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int dummy; } ;
struct lcd_panel {int dummy; } ;


 int M21_242X_GPIO11 ;
 int omap_cfg_reg (int ) ;

__attribute__((used)) static int apollon_panel_init(struct lcd_panel *panel,
    struct omapfb_device *fbdev)
{

 omap_cfg_reg(M21_242X_GPIO11);
 return 0;
}
