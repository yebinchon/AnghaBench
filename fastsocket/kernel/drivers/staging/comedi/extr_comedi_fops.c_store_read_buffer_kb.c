
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long uint64_t ;
typedef unsigned long uint32_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int * async; } ;
struct comedi_device_file_info {TYPE_1__* device; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mutex; } ;


 int EINVAL ;
 int SDF_CMD_READ ;
 unsigned long bytes_per_kibi ;
 struct comedi_subdevice* comedi_get_read_subdevice (struct comedi_device_file_info*) ;
 struct comedi_device_file_info* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int resize_async_buffer (TYPE_1__*,struct comedi_subdevice* const,int *,unsigned long) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t store_read_buffer_kb(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct comedi_device_file_info *info = dev_get_drvdata(dev);
 unsigned long new_size_kb;
 uint64_t new_size;
 int retval;
 struct comedi_subdevice *const read_subdevice =
     comedi_get_read_subdevice(info);

 if (strict_strtoul(buf, 10, &new_size_kb))
  return -EINVAL;
 if (new_size_kb != (uint32_t) new_size_kb)
  return -EINVAL;
 new_size = ((uint64_t) new_size_kb) * bytes_per_kibi;
 if (new_size != (uint32_t) new_size)
  return -EINVAL;

 mutex_lock(&info->device->mutex);
 if (read_subdevice == ((void*)0) ||
     (read_subdevice->subdev_flags & SDF_CMD_READ) == 0 ||
     read_subdevice->async == ((void*)0)) {
  mutex_unlock(&info->device->mutex);
  return -EINVAL;
 }
 retval = resize_async_buffer(info->device, read_subdevice,
         read_subdevice->async, new_size);
 mutex_unlock(&info->device->mutex);

 if (retval < 0)
  return retval;
 return count;
}
