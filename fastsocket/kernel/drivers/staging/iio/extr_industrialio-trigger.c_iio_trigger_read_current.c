
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {TYPE_1__* trig; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int IIO_TRIGGER_NAME_LENGTH ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t iio_trigger_read_current(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 int len = 0;
 if (dev_info->trig)
  len = snprintf(buf,
          IIO_TRIGGER_NAME_LENGTH,
          "%s\n",
          dev_info->trig->name);
 return len;
}
