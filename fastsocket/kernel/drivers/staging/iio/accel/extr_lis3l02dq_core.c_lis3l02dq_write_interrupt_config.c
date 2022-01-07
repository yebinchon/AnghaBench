
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct iio_event_attr {int mask; TYPE_2__* listel; } ;
struct iio_dev {int mlock; TYPE_1__** interrupts; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {scalar_t__ refcount; } ;
struct TYPE_4__ {int ev_list; } ;


 int LIS3L02DQ_REG_CTRL_2_ADDR ;
 int LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT ;
 int LIS3L02DQ_REG_WAKE_UP_CFG_ADDR ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_add_event_to_list (TYPE_2__*,int *) ;
 int iio_remove_event_from_list (TYPE_2__*,int *) ;
 int lis3l02dq_spi_read_reg_8 (struct device*,int ,int*) ;
 int lis3l02dq_spi_write_reg_8 (struct device*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iio_event_attr* to_iio_event_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t lis3l02dq_write_interrupt_config(struct device *dev,
      struct device_attribute *attr,
      const char *buf,
      size_t len)
{
 struct iio_event_attr *this_attr = to_iio_event_attr(attr);
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 int ret, currentlyset, changed = 0;
 u8 valold, controlold;
 bool val;

 val = !(buf[0] == '0');

 mutex_lock(&indio_dev->mlock);

 ret = lis3l02dq_spi_read_reg_8(dev,
           LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
           &valold);
 if (ret)
  goto error_mutex_unlock;


 ret = lis3l02dq_spi_read_reg_8(dev,
           LIS3L02DQ_REG_CTRL_2_ADDR,
           &controlold);
 if (ret)
  goto error_mutex_unlock;
 currentlyset = !!(valold & this_attr->mask);
 if (val == 0 && currentlyset) {
  valold &= ~this_attr->mask;
  changed = 1;
  iio_remove_event_from_list(this_attr->listel,
       &indio_dev->interrupts[0]
       ->ev_list);
 } else if (val == 1 && !currentlyset) {
  changed = 1;
  valold |= this_attr->mask;
  iio_add_event_to_list(this_attr->listel,
         &indio_dev->interrupts[0]->ev_list);
 }

 if (changed) {
  ret = lis3l02dq_spi_write_reg_8(dev,
      LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
      &valold);
  if (ret)
   goto error_mutex_unlock;




  controlold = this_attr->listel->refcount ?
   (controlold | LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT) :
   (controlold & ~LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT);
  ret = lis3l02dq_spi_write_reg_8(dev,
      LIS3L02DQ_REG_CTRL_2_ADDR,
      &controlold);
  if (ret)
   goto error_mutex_unlock;
 }
error_mutex_unlock:
 mutex_unlock(&indio_dev->mlock);

 return ret ? ret : len;
}
