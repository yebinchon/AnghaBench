
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int BUG_ON (int ) ;
 struct lcd_panel* fbdev_panel ;
 int * fbdev_pdev ;
 int omapfb_do_probe (int *,struct lcd_panel*) ;

void omapfb_register_panel(struct lcd_panel *panel)
{
 BUG_ON(fbdev_panel != ((void*)0));

 fbdev_panel = panel;
 if (fbdev_pdev != ((void*)0))
  omapfb_do_probe(fbdev_pdev, fbdev_panel);
}
