
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct panel_info {int dummy; } ;


 int kfree (struct panel_info*) ;
 struct panel_info* platform_get_drvdata (struct platform_device*) ;
 int setup_vsync (struct panel_info*,int ) ;

__attribute__((used)) static int mddi_nt35399_remove(struct platform_device *pdev)
{
 struct panel_info *panel = platform_get_drvdata(pdev);

 setup_vsync(panel, 0);
 kfree(panel);
 return 0;
}
