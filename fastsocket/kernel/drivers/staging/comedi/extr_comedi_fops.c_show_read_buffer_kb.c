
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct comedi_subdevice {int subdev_flags; TYPE_1__* async; } ;
struct comedi_device_file_info {TYPE_2__* device; } ;
typedef int ssize_t ;
struct TYPE_4__ {int mutex; } ;
struct TYPE_3__ {unsigned int prealloc_bufsz; } ;


 int PAGE_SIZE ;
 int SDF_CMD_READ ;
 unsigned int bytes_per_kibi ;
 struct comedi_subdevice* comedi_get_read_subdevice (struct comedi_device_file_info*) ;
 struct comedi_device_file_info* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t show_read_buffer_kb(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 ssize_t retval;
 struct comedi_device_file_info *info = dev_get_drvdata(dev);
 unsigned buffer_size_kb = 0;
 struct comedi_subdevice *const read_subdevice =
     comedi_get_read_subdevice(info);

 mutex_lock(&info->device->mutex);
 if (read_subdevice &&
     (read_subdevice->subdev_flags & SDF_CMD_READ) &&
     read_subdevice->async) {
  buffer_size_kb = read_subdevice->async->prealloc_bufsz /
      bytes_per_kibi;
 }
 retval = snprintf(buf, PAGE_SIZE, "%i\n", buffer_size_kb);
 mutex_unlock(&info->device->mutex);

 return retval;
}
