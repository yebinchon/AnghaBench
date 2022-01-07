
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_backlight {int dummy; } ;
struct backlight_device {int dev; } ;


 int backlight_device_unregister (struct backlight_device*) ;
 struct omap_backlight* dev_get_drvdata (int *) ;
 int kfree (struct omap_backlight*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int omapbl_remove(struct platform_device *pdev)
{
 struct backlight_device *dev = platform_get_drvdata(pdev);
 struct omap_backlight *bl = dev_get_drvdata(&dev->dev);

 backlight_device_unregister(dev);
 kfree(bl);

 return 0;
}
