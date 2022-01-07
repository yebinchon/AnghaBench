
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned long power; } ;
struct backlight_device {int ops_lock; TYPE_1__ props; scalar_t__ ops; } ;
typedef int ssize_t ;


 int ENXIO ;
 int backlight_update_status (struct backlight_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,unsigned long) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;
 struct backlight_device* to_backlight_device (struct device*) ;

__attribute__((used)) static ssize_t backlight_store_power(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 int rc;
 struct backlight_device *bd = to_backlight_device(dev);
 unsigned long power;

 rc = strict_strtoul(buf, 0, &power);
 if (rc)
  return rc;

 rc = -ENXIO;
 mutex_lock(&bd->ops_lock);
 if (bd->ops) {
  pr_debug("backlight: set power to %lu\n", power);
  if (bd->props.power != power) {
   bd->props.power = power;
   backlight_update_status(bd);
  }
  rc = count;
 }
 mutex_unlock(&bd->ops_lock);

 return rc;
}
