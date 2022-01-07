
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
struct TYPE_2__ {int option_mode_1; int option_mode_2; } ;





 struct iio_dev* dev_get_drvdata (struct device*) ;
 scalar_t__ sprintf (char*,char*) ;

__attribute__((used)) static ssize_t
sca3000_show_available_measurement_modes(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 struct sca3000_state *st = dev_info->dev_data;
 int len = 0;

 len += sprintf(buf + len, "0 - normal mode");
 switch (st->info->option_mode_1) {
 case 129:
  len += sprintf(buf + len, ", 1 - narrow mode");
  break;
 case 130:
  len += sprintf(buf + len, ", 1 - bypass mode");
  break;
 };
 switch (st->info->option_mode_2) {
 case 128:
  len += sprintf(buf + len, ", 2 - wide mode");
  break;
 }

 len += sprintf(buf + len, " 3 - motion detection \n");

 return len;
}
