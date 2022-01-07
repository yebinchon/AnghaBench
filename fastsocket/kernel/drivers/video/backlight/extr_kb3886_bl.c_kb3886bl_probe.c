
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {struct kb3886bl_machinfo* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct kb3886bl_machinfo {int limit_mask; int default_intensity; int max_intensity; } ;
struct TYPE_9__ {int brightness; int power; int max_brightness; } ;
struct TYPE_10__ {TYPE_1__ props; } ;


 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 TYPE_2__* backlight_device_register (char*,TYPE_6__*,int *,int *) ;
 int backlight_update_status (TYPE_2__*) ;
 struct kb3886bl_machinfo* bl_machinfo ;
 TYPE_2__* kb3886_backlight_device ;
 int kb3886bl_ops ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;

__attribute__((used)) static int kb3886bl_probe(struct platform_device *pdev)
{
 struct kb3886bl_machinfo *machinfo = pdev->dev.platform_data;

 bl_machinfo = machinfo;
 if (!machinfo->limit_mask)
  machinfo->limit_mask = -1;

 kb3886_backlight_device = backlight_device_register("kb3886-bl",
  &pdev->dev, ((void*)0), &kb3886bl_ops);
 if (IS_ERR(kb3886_backlight_device))
  return PTR_ERR(kb3886_backlight_device);

 platform_set_drvdata(pdev, kb3886_backlight_device);

 kb3886_backlight_device->props.max_brightness = machinfo->max_intensity;
 kb3886_backlight_device->props.power = FB_BLANK_UNBLANK;
 kb3886_backlight_device->props.brightness = machinfo->default_intensity;
 backlight_update_status(kb3886_backlight_device);

 return 0;
}
