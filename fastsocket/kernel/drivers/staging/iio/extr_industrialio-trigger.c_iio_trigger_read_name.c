
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_trigger* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

ssize_t iio_trigger_read_name(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct iio_trigger *trig = dev_get_drvdata(dev);
 return sprintf(buf, "%s\n", trig->name);
}
