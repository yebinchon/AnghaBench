
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
typedef struct thermal_zone_device thermal_cooling_device ;
struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int kfree (struct thermal_zone_device*) ;
 int strncmp (int ,char*,int) ;
 struct thermal_zone_device* to_cooling_device (struct device*) ;
 struct thermal_zone_device* to_thermal_zone (struct device*) ;

__attribute__((used)) static void thermal_release(struct device *dev)
{
 struct thermal_zone_device *tz;
 struct thermal_cooling_device *cdev;

 if (!strncmp(dev_name(dev), "thermal_zone", sizeof "thermal_zone" - 1)) {
  tz = to_thermal_zone(dev);
  kfree(tz);
 } else {
  cdev = to_cooling_device(dev);
  kfree(cdev);
 }
}
