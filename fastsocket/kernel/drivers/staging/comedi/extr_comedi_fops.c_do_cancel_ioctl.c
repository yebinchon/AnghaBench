
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {void* lock; void* busy; int * async; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;


 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int do_cancel (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int do_cancel_ioctl(struct comedi_device *dev, unsigned int arg,
      void *file)
{
 struct comedi_subdevice *s;

 if (arg >= dev->n_subdevices)
  return -EINVAL;
 s = dev->subdevices + arg;
 if (s->async == ((void*)0))
  return -EINVAL;

 if (s->lock && s->lock != file)
  return -EACCES;

 if (!s->busy)
  return 0;

 if (s->busy != file)
  return -EBUSY;

 return do_cancel(dev, s);
}
