
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int omap3evm_panel ;
 int omapfb_register_panel (int *) ;

__attribute__((used)) static int omap3evm_panel_probe(struct platform_device *pdev)
{
 omapfb_register_panel(&omap3evm_panel);
 return 0;
}
