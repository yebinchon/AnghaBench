
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;
struct comedi_async {int prealloc_bufsz; } ;



int comedi_get_buffer_size(void *d, unsigned int subdev)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s = dev->subdevices + subdev;
 struct comedi_async *async;

 if (subdev >= dev->n_subdevices)
  return -1;
 async = s->async;
 if (async == ((void*)0))
  return 0;

 return async->prealloc_bufsz;
}
