
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {void* lock; int spin_lock; scalar_t__ busy; struct comedi_async* async; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;
struct comedi_async {int * cb_arg; int * cb_func; scalar_t__ cb_mask; } ;


 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int comedi_unlock(void *d, unsigned int subdevice)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s;
 unsigned long flags;
 struct comedi_async *async;
 int ret;

 if (subdevice >= dev->n_subdevices)
  return -EINVAL;

 s = dev->subdevices + subdevice;

 async = s->async;

 spin_lock_irqsave(&s->spin_lock, flags);

 if (s->busy) {
  ret = -EBUSY;
 } else if (s->lock && s->lock != (void *)d) {
  ret = -EACCES;
 } else {
  s->lock = ((void*)0);

  if (async) {
   async->cb_mask = 0;
   async->cb_func = ((void*)0);
   async->cb_arg = ((void*)0);
  }

  ret = 0;
 }

 spin_unlock_irqrestore(&s->spin_lock, flags);

 return ret;
}
