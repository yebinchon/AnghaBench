
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int apollon_panel ;
 int omapfb_register_panel (int *) ;

__attribute__((used)) static int apollon_panel_probe(struct platform_device *pdev)
{
 omapfb_register_panel(&apollon_panel);
 return 0;
}
