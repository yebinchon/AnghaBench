
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sca3000_state {TYPE_1__* info; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t sca3000_show_name(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 struct sca3000_state *st = dev_info->dev_data;
 return sprintf(buf, "%s\n", st->info->name);
}
