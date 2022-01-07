
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {int state; } ;
struct backlight_device {int ops_lock; TYPE_2__ props; TYPE_1__* ops; } ;
typedef int pm_message_t ;
struct TYPE_3__ {int options; } ;


 int BL_CORE_SUSPENDED ;
 int BL_CORE_SUSPENDRESUME ;
 int backlight_update_status (struct backlight_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct backlight_device* to_backlight_device (struct device*) ;

__attribute__((used)) static int backlight_suspend(struct device *dev, pm_message_t state)
{
 struct backlight_device *bd = to_backlight_device(dev);

 if (bd->ops->options & BL_CORE_SUSPENDRESUME) {
  mutex_lock(&bd->ops_lock);
  bd->props.state |= BL_CORE_SUSPENDED;
  backlight_update_status(bd);
  mutex_unlock(&bd->ops_lock);
 }

 return 0;
}
