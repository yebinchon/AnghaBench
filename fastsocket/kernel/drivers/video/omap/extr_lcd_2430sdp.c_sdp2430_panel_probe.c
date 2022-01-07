
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int omapfb_register_panel (int *) ;
 int sdp2430_panel ;

__attribute__((used)) static int sdp2430_panel_probe(struct platform_device *pdev)
{
 omapfb_register_panel(&sdp2430_panel);
 return 0;
}
