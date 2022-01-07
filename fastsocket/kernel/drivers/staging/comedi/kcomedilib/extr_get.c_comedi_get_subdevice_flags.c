
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int subdev_flags; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;



unsigned int comedi_get_subdevice_flags(void *d, unsigned int subdevice)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s = dev->subdevices + subdevice;

 return s->subdev_flags;
}
