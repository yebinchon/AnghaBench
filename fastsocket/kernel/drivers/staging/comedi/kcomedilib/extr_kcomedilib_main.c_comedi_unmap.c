
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int async; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;


 int EINVAL ;

int comedi_unmap(void *d, unsigned int subdevice)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s;

 if (subdevice >= dev->n_subdevices)
  return -EINVAL;

 s = dev->subdevices + subdevice;

 if (!s->async)
  return -EINVAL;



 return 0;
}
