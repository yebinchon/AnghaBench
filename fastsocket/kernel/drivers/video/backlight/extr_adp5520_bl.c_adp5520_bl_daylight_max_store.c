
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adp5520_bl {int cached_daylight_max; } ;
typedef int ssize_t ;


 int DAYLIGHT_MAX ;
 int adp5520_store (struct device*,char const*,size_t,int ) ;
 struct adp5520_bl* dev_get_drvdata (struct device*) ;
 int strict_strtoul (char const*,int,int *) ;

__attribute__((used)) static ssize_t adp5520_bl_daylight_max_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct adp5520_bl *data = dev_get_drvdata(dev);

 strict_strtoul(buf, 10, &data->cached_daylight_max);
 return adp5520_store(dev, buf, count, DAYLIGHT_MAX);
}
