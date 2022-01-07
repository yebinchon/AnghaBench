
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_backlight {int current_intensity; } ;
struct backlight_device {int dev; } ;


 struct omap_backlight* dev_get_drvdata (int *) ;

__attribute__((used)) static int omapbl_get_intensity(struct backlight_device *dev)
{
 struct omap_backlight *bl = dev_get_drvdata(&dev->dev);
 return bl->current_intensity;
}
