
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_backlight {scalar_t__ current_intensity; scalar_t__ powermode; } ;
struct TYPE_2__ {scalar_t__ brightness; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; int dev; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 struct omap_backlight* dev_get_drvdata (int *) ;
 int omapbl_send_intensity (scalar_t__) ;
 int omapbl_set_power (struct backlight_device*,scalar_t__) ;

__attribute__((used)) static int omapbl_update_status(struct backlight_device *dev)
{
 struct omap_backlight *bl = dev_get_drvdata(&dev->dev);

 if (bl->current_intensity != dev->props.brightness) {
  if (bl->powermode == FB_BLANK_UNBLANK)
   omapbl_send_intensity(dev->props.brightness);
  bl->current_intensity = dev->props.brightness;
 }

 if (dev->props.fb_blank != bl->powermode)
  omapbl_set_power(dev, dev->props.fb_blank);

 return 0;
}
