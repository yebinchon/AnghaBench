
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int kb3886bl_intensity ;

__attribute__((used)) static int kb3886bl_get_intensity(struct backlight_device *bd)
{
 return kb3886bl_intensity;
}
