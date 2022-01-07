
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device_file_info {TYPE_1__* device; struct comedi_subdevice* read_subdevice; } ;
struct TYPE_2__ {struct comedi_subdevice* read_subdev; } ;



__attribute__((used)) static inline struct comedi_subdevice *comedi_get_read_subdevice(const struct
         comedi_device_file_info
         *info)
{
 if (info->read_subdevice)
  return info->read_subdevice;
 if (info->device == ((void*)0))
  return ((void*)0);
 return info->device->read_subdev;
}
