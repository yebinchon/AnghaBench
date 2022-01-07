
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {char* type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct thermal_cooling_device* to_cooling_device (struct device*) ;

__attribute__((used)) static ssize_t
thermal_cooling_device_type_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct thermal_cooling_device *cdev = to_cooling_device(dev);

 return sprintf(buf, "%s\n", cdev->type);
}
