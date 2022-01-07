
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_backlight_data {int dummy; } ;
struct platform_device {int dummy; } ;
struct backlight_device {int dummy; } ;


 int backlight_device_unregister (struct backlight_device*) ;
 struct wm831x_backlight_data* bl_get_data (struct backlight_device*) ;
 int kfree (struct wm831x_backlight_data*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int wm831x_backlight_remove(struct platform_device *pdev)
{
 struct backlight_device *bl = platform_get_drvdata(pdev);
 struct wm831x_backlight_data *data = bl_get_data(bl);

 backlight_device_unregister(bl);
 kfree(data);
 return 0;
}
