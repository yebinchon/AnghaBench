
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int lock; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SCA3000_REG_ADDR_REVID ;
 int SCA3000_REVID_MAJOR_MASK ;
 int SCA3000_REVID_MINOR_MASK ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;
 scalar_t__ sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t sca3000_show_rev(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 int len = 0, ret;
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 struct sca3000_state *st = dev_info->dev_data;

 u8 *rx;

 mutex_lock(&st->lock);
 ret = sca3000_read_data(st, SCA3000_REG_ADDR_REVID, &rx, 1);
 if (ret < 0)
  goto error_ret;
 len += sprintf(buf + len,
         "major=%d, minor=%d\n",
         rx[1] & SCA3000_REVID_MAJOR_MASK,
         rx[1] & SCA3000_REVID_MINOR_MASK);
 kfree(rx);

error_ret:
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
