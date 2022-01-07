
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_backlight {int powermode; } ;
struct backlight_device {int dev; } ;


 struct omap_backlight* dev_get_drvdata (int *) ;
 int omapbl_blank (struct omap_backlight*,int) ;

__attribute__((used)) static int omapbl_set_power(struct backlight_device *dev, int state)
{
 struct omap_backlight *bl = dev_get_drvdata(&dev->dev);

 omapbl_blank(bl, state);
 bl->powermode = state;

 return 0;
}
