
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {TYPE_1__* driver; int attached; } ;
struct TYPE_2__ {int module; } ;


 unsigned int COMEDI_NUM_BOARD_MINORS ;
 struct comedi_device_file_info* comedi_get_device_file_info (unsigned int) ;
 unsigned int simple_strtoul (char const*,int *,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int try_module_get (int ) ;

void *comedi_open(const char *filename)
{
 struct comedi_device_file_info *dev_file_info;
 struct comedi_device *dev;
 unsigned int minor;

 if (strncmp(filename, "/dev/comedi", 11) != 0)
  return ((void*)0);

 minor = simple_strtoul(filename + 11, ((void*)0), 0);

 if (minor >= COMEDI_NUM_BOARD_MINORS)
  return ((void*)0);

 dev_file_info = comedi_get_device_file_info(minor);
 if (dev_file_info == ((void*)0))
  return ((void*)0);
 dev = dev_file_info->device;

 if (dev == ((void*)0) || !dev->attached)
  return ((void*)0);

 if (!try_module_get(dev->driver->module))
  return ((void*)0);

 return (void *)dev;
}
