
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct backlight_device {int dummy; } ;


 int kfree (struct backlight_device*) ;
 struct backlight_device* to_backlight_device (struct device*) ;

__attribute__((used)) static void bl_device_release(struct device *dev)
{
 struct backlight_device *bd = to_backlight_device(dev);
 kfree(bd);
}
