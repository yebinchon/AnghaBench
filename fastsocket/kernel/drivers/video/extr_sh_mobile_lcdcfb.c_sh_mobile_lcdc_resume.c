
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int platform_get_drvdata (struct platform_device*) ;
 int sh_mobile_lcdc_start (int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int sh_mobile_lcdc_resume(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);

 return sh_mobile_lcdc_start(platform_get_drvdata(pdev));
}
