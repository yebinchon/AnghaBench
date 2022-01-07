
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int attached; } ;


 unsigned int COMEDI_NUM_MINORS ;
 struct comedi_device_file_info* comedi_get_device_file_info (unsigned int) ;

void *comedi_open_old(unsigned int minor)
{
 struct comedi_device_file_info *dev_file_info;
 struct comedi_device *dev;

 if (minor >= COMEDI_NUM_MINORS)
  return ((void*)0);

 dev_file_info = comedi_get_device_file_info(minor);
 if (dev_file_info == ((void*)0))
  return ((void*)0);
 dev = dev_file_info->device;

 if (dev == ((void*)0) || !dev->attached)
  return ((void*)0);

 return (void *)dev;
}
