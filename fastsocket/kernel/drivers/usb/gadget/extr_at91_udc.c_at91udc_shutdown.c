
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_get_drvdata (struct platform_device*) ;
 int pullup (int ,int ) ;

__attribute__((used)) static void at91udc_shutdown(struct platform_device *dev)
{

 pullup(platform_get_drvdata(dev), 0);
}
