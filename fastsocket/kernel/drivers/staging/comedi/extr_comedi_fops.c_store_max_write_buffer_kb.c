
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long uint64_t ;
typedef unsigned long uint32_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct comedi_subdevice {int subdev_flags; TYPE_1__* async; } ;
struct comedi_device_file_info {TYPE_2__* device; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int mutex; } ;
struct TYPE_3__ {unsigned long max_bufsize; } ;


 size_t EINVAL ;
 int SDF_CMD_WRITE ;
 unsigned long bytes_per_kibi ;
 struct comedi_subdevice* comedi_get_write_subdevice (struct comedi_device_file_info*) ;
 struct comedi_device_file_info* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t store_max_write_buffer_kb(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct comedi_device_file_info *info = dev_get_drvdata(dev);
 unsigned long new_max_size_kb;
 uint64_t new_max_size;
 struct comedi_subdevice *const write_subdevice =
     comedi_get_write_subdevice(info);

 if (strict_strtoul(buf, 10, &new_max_size_kb))
  return -EINVAL;
 if (new_max_size_kb != (uint32_t) new_max_size_kb)
  return -EINVAL;
 new_max_size = ((uint64_t) new_max_size_kb) * bytes_per_kibi;
 if (new_max_size != (uint32_t) new_max_size)
  return -EINVAL;

 mutex_lock(&info->device->mutex);
 if (write_subdevice == ((void*)0) ||
     (write_subdevice->subdev_flags & SDF_CMD_WRITE) == 0 ||
     write_subdevice->async == ((void*)0)) {
  mutex_unlock(&info->device->mutex);
  return -EINVAL;
 }
 write_subdevice->async->max_bufsize = new_max_size;
 mutex_unlock(&info->device->mutex);

 return count;
}
