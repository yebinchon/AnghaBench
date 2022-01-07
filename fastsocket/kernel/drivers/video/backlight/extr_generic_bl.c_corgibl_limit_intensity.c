
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct backlight_device {int ops_lock; TYPE_1__ props; } ;


 int GENERICBL_BATTLOW ;
 int backlight_update_status (struct backlight_device*) ;
 struct backlight_device* generic_backlight_device ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void corgibl_limit_intensity(int limit)
{
 struct backlight_device *bd = generic_backlight_device;

 mutex_lock(&bd->ops_lock);
 if (limit)
  bd->props.state |= GENERICBL_BATTLOW;
 else
  bd->props.state &= ~GENERICBL_BATTLOW;
 backlight_update_status(generic_backlight_device);
 mutex_unlock(&bd->ops_lock);
}
