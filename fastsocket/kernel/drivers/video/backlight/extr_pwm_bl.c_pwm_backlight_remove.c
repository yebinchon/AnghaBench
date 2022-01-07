
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_bl_data {int pwm; int period; } ;
struct platform_pwm_backlight_data {int (* exit ) (TYPE_1__*) ;} ;
struct TYPE_2__ {struct platform_pwm_backlight_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct backlight_device {int dev; } ;


 int backlight_device_unregister (struct backlight_device*) ;
 struct pwm_bl_data* dev_get_drvdata (int *) ;
 int kfree (struct pwm_bl_data*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;
 int pwm_config (int ,int ,int ) ;
 int pwm_disable (int ) ;
 int pwm_free (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int pwm_backlight_remove(struct platform_device *pdev)
{
 struct platform_pwm_backlight_data *data = pdev->dev.platform_data;
 struct backlight_device *bl = platform_get_drvdata(pdev);
 struct pwm_bl_data *pb = dev_get_drvdata(&bl->dev);

 backlight_device_unregister(bl);
 pwm_config(pb->pwm, 0, pb->period);
 pwm_disable(pb->pwm);
 pwm_free(pb->pwm);
 kfree(pb);
 if (data->exit)
  data->exit(&pdev->dev);
 return 0;
}
