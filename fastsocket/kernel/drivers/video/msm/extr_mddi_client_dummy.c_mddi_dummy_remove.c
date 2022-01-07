
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct panel_info {int dummy; } ;


 int kfree (struct panel_info*) ;
 struct panel_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mddi_dummy_remove(struct platform_device *pdev)
{
 struct panel_info *panel = platform_get_drvdata(pdev);
 kfree(panel);
 return 0;
}
