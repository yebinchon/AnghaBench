
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightness; scalar_t__ power; int state; } ;
struct backlight_device {TYPE_1__ props; } ;
struct TYPE_4__ {int limit_mask; int (* kick_battery ) () ;int (* set_bl_intensity ) (int) ;} ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int GENERICBL_BATTLOW ;
 TYPE_2__* bl_machinfo ;
 int genericbl_intensity ;
 int stub1 (int) ;
 int stub2 () ;

__attribute__((used)) static int genericbl_send_intensity(struct backlight_device *bd)
{
 int intensity = bd->props.brightness;

 if (bd->props.power != FB_BLANK_UNBLANK)
  intensity = 0;
 if (bd->props.state & BL_CORE_FBBLANK)
  intensity = 0;
 if (bd->props.state & BL_CORE_SUSPENDED)
  intensity = 0;
 if (bd->props.state & GENERICBL_BATTLOW)
  intensity &= bl_machinfo->limit_mask;

 bl_machinfo->set_bl_intensity(intensity);

 genericbl_intensity = intensity;

 if (bl_machinfo->kick_battery)
  bl_machinfo->kick_battery();

 return 0;
}
