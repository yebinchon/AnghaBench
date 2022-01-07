
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* maxdata_list; unsigned int maxdata; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;



unsigned int comedi_get_maxdata(void *d, unsigned int subdevice,
    unsigned int chan)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s = dev->subdevices + subdevice;

 if (s->maxdata_list)
  return s->maxdata_list[chan];

 return s->maxdata;
}
