
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 int ENODEV ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int LOCOMOLCD_SUSPENDED ;
 int current_intensity ;
 int locomo_frontlight_set (int ,int,int,int) ;
 int locomolcd_dev ;
 int locomolcd_flags ;

__attribute__((used)) static int locomolcd_set_intensity(struct backlight_device *bd)
{
 int intensity = bd->props.brightness;

 if (bd->props.power != FB_BLANK_UNBLANK)
  intensity = 0;
 if (bd->props.fb_blank != FB_BLANK_UNBLANK)
  intensity = 0;
 if (locomolcd_flags & LOCOMOLCD_SUSPENDED)
  intensity = 0;

 switch (intensity) {

 case 0: locomo_frontlight_set(locomolcd_dev, 0, 0, 161); break;
 case 1: locomo_frontlight_set(locomolcd_dev, 117, 0, 161); break;
 case 2: locomo_frontlight_set(locomolcd_dev, 163, 0, 148); break;
 case 3: locomo_frontlight_set(locomolcd_dev, 194, 0, 161); break;
 case 4: locomo_frontlight_set(locomolcd_dev, 194, 1, 161); break;

 default:
  return -ENODEV;
 }
 current_intensity = intensity;
 return 0;
}
