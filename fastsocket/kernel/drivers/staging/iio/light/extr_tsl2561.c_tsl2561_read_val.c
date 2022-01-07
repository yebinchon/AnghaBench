
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsl2561_state {int command_buf_lock; TYPE_1__* command_buf; int client; } ;
struct iio_dev_attr {int address; } ;
struct iio_dev {struct tsl2561_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int cmd; int word; int address; } ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_word_data (int ,char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t tsl2561_read_val(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 int ret = 0, data;
 ssize_t len = 0;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct tsl2561_state *st = indio_dev->dev_data;

 mutex_lock(&st->command_buf_lock);
 st->command_buf->cmd = 1;
 st->command_buf->word = 1;
 st->command_buf->address = this_attr->address;

 data = i2c_smbus_read_word_data(st->client, *(char *)(st->command_buf));
 if (data < 0) {
  ret = data;
  goto error_ret;
 }
 len = sprintf(buf, "%u\n", data);

error_ret:
 mutex_unlock(&st->command_buf_lock);

 return ret ? ret : len;
}
