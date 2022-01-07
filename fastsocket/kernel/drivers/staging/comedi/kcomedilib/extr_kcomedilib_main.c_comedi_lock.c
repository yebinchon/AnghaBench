
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int spin_lock; void* lock; scalar_t__ busy; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;


 int EBUSY ;
 int EINVAL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int comedi_lock(void *d, unsigned int subdevice)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s;
 unsigned long flags;
 int ret = 0;

 if (subdevice >= dev->n_subdevices)
  return -EINVAL;

 s = dev->subdevices + subdevice;

 spin_lock_irqsave(&s->spin_lock, flags);

 if (s->busy) {
  ret = -EBUSY;
 } else {
  if (s->lock) {
   ret = -EBUSY;
  } else {
   s->lock = d;
  }
 }

 spin_unlock_irqrestore(&s->spin_lock, flags);

 return ret;
}
