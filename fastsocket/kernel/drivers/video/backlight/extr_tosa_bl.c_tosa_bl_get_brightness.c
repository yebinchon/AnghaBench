
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_properties {int brightness; } ;
struct backlight_device {struct backlight_properties props; } ;



__attribute__((used)) static int tosa_bl_get_brightness(struct backlight_device *dev)
{
 struct backlight_properties *props = &dev->props;

 return props->brightness;
}
