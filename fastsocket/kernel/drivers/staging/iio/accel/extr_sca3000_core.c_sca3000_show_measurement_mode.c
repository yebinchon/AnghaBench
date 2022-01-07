
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sca3000_state {int lock; TYPE_1__* info; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int option_mode_2; int option_mode_1; } ;
 int SCA3000_REG_ADDR_MODE ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t
sca3000_show_measurement_mode(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 struct sca3000_state *st = dev_info->dev_data;
 int len = 0, ret;
 u8 *rx;

 mutex_lock(&st->lock);
 ret = sca3000_read_data(st, SCA3000_REG_ADDR_MODE, &rx, 1);
 if (ret)
  goto error_ret;

 rx[1] &= 0x03;
 switch (rx[1]) {
 case 133:
  len += sprintf(buf + len, "0 - normal mode\n");
  break;
 case 134:
  len += sprintf(buf + len, "3 - motion detection\n");
  break;
 case 132:
  switch (st->info->option_mode_1) {
  case 129:
   len += sprintf(buf + len, "1 - narrow mode\n");
   break;
  case 130:
   len += sprintf(buf + len, "1 - bypass mode\n");
   break;
  };
  break;
 case 131:
  switch (st->info->option_mode_2) {
  case 128:
   len += sprintf(buf + len, "2 - wide mode\n");
   break;
  }
  break;
 };

error_ret:
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
