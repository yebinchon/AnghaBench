
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct generic_bl_info* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct generic_bl_info {int limit_mask; char* name; int default_intensity; int max_intensity; } ;
struct TYPE_3__ {int brightness; int power; int max_brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* backlight_device_register (char const*,TYPE_2__*,int *,int *) ;
 int backlight_update_status (struct backlight_device*) ;
 struct generic_bl_info* bl_machinfo ;
 struct backlight_device* generic_backlight_device ;
 int genericbl_ops ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 int printk (char*) ;

__attribute__((used)) static int genericbl_probe(struct platform_device *pdev)
{
 struct generic_bl_info *machinfo = pdev->dev.platform_data;
 const char *name = "generic-bl";
 struct backlight_device *bd;

 bl_machinfo = machinfo;
 if (!machinfo->limit_mask)
  machinfo->limit_mask = -1;

 if (machinfo->name)
  name = machinfo->name;

 bd = backlight_device_register (name,
  &pdev->dev, ((void*)0), &genericbl_ops);
 if (IS_ERR (bd))
  return PTR_ERR (bd);

 platform_set_drvdata(pdev, bd);

 bd->props.max_brightness = machinfo->max_intensity;
 bd->props.power = FB_BLANK_UNBLANK;
 bd->props.brightness = machinfo->default_intensity;
 backlight_update_status(bd);

 generic_backlight_device = bd;

 printk("Generic Backlight Driver Initialized.\n");
 return 0;
}
