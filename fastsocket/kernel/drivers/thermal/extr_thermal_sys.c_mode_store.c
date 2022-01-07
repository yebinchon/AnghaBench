
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_mode ) (struct thermal_zone_device*,int ) ;} ;


 int EINVAL ;
 int EPERM ;
 int THERMAL_DEVICE_DISABLED ;
 int THERMAL_DEVICE_ENABLED ;
 int strncmp (char const*,char*,int) ;
 int stub1 (struct thermal_zone_device*,int ) ;
 int stub2 (struct thermal_zone_device*,int ) ;
 struct thermal_zone_device* to_thermal_zone (struct device*) ;

__attribute__((used)) static ssize_t
mode_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct thermal_zone_device *tz = to_thermal_zone(dev);
 int result;

 if (!tz->ops->set_mode)
  return -EPERM;

 if (!strncmp(buf, "enabled", sizeof("enabled")))
  result = tz->ops->set_mode(tz, THERMAL_DEVICE_ENABLED);
 else if (!strncmp(buf, "disabled", sizeof("disabled")))
  result = tz->ops->set_mode(tz, THERMAL_DEVICE_DISABLED);
 else
  result = -EINVAL;

 if (result)
  return result;

 return count;
}
