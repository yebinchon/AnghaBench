
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ type; void* lock; scalar_t__ busy; struct comedi_async* async; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;
struct comedi_async {unsigned int cb_mask; int (* cb_func ) (unsigned int,void*) ;int * cb_arg; } ;


 scalar_t__ COMEDI_SUBD_UNUSED ;
 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;

int comedi_register_callback(void *d, unsigned int subdevice,
        unsigned int mask, int (*cb) (unsigned int,
          void *), void *arg)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s;
 struct comedi_async *async;

 if (subdevice >= dev->n_subdevices)
  return -EINVAL;

 s = dev->subdevices + subdevice;

 async = s->async;
 if (s->type == COMEDI_SUBD_UNUSED || !async)
  return -EIO;


 if (s->lock && s->lock != d)
  return -EACCES;


 if (s->busy)
  return -EBUSY;

 if (!mask) {
  async->cb_mask = 0;
  async->cb_func = ((void*)0);
  async->cb_arg = ((void*)0);
 } else {
  async->cb_mask = mask;
  async->cb_func = cb;
  async->cb_arg = arg;
 }

 return 0;
}
