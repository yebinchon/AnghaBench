
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct platform_device {int id; TYPE_2__ dev; int name; } ;
struct da903x_backlight_data {int id; int da903x_dev; scalar_t__ current_brightness; } ;
struct TYPE_3__ {int max_brightness; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;



 int DA9030_MAX_BRIGHTNESS ;

 int DA9034_MAX_BRIGHTNESS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* backlight_device_register (int ,int ,struct da903x_backlight_data*,int *) ;
 int backlight_update_status (struct backlight_device*) ;
 int da903x_backlight_ops ;
 int dev_err (TYPE_2__*,char*,...) ;
 int kfree (struct da903x_backlight_data*) ;
 struct da903x_backlight_data* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;

__attribute__((used)) static int da903x_backlight_probe(struct platform_device *pdev)
{
 struct da903x_backlight_data *data;
 struct backlight_device *bl;
 int max_brightness;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 switch (pdev->id) {
 case 129:
  max_brightness = DA9030_MAX_BRIGHTNESS;
  break;
 case 128:
  max_brightness = DA9034_MAX_BRIGHTNESS;
  break;
 default:
  dev_err(&pdev->dev, "invalid backlight device ID(%d)\n",
    pdev->id);
  kfree(data);
  return -EINVAL;
 }

 data->id = pdev->id;
 data->da903x_dev = pdev->dev.parent;
 data->current_brightness = 0;

 bl = backlight_device_register(pdev->name, data->da903x_dev,
   data, &da903x_backlight_ops);
 if (IS_ERR(bl)) {
  dev_err(&pdev->dev, "failed to register backlight\n");
  kfree(data);
  return PTR_ERR(bl);
 }

 bl->props.max_brightness = max_brightness;
 bl->props.brightness = max_brightness;

 platform_set_drvdata(pdev, bl);
 backlight_update_status(bl);
 return 0;
}
