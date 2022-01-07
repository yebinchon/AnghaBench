
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct backlight_device {int ops_lock; TYPE_1__* ops; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_brightness ) (struct backlight_device*) ;} ;


 int ENXIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct backlight_device*) ;
 int stub2 (struct backlight_device*) ;
 struct backlight_device* to_backlight_device (struct device*) ;

__attribute__((used)) static ssize_t backlight_show_actual_brightness(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 int rc = -ENXIO;
 struct backlight_device *bd = to_backlight_device(dev);

 mutex_lock(&bd->ops_lock);
 if (bd->ops && bd->ops->get_brightness)
  rc = sprintf(buf, "%d\n", bd->ops->get_brightness(bd));
 mutex_unlock(&bd->ops_lock);

 return rc;
}
