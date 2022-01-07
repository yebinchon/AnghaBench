
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {void* lock; void* busy; int (* cancel ) (struct comedi_device*,struct comedi_subdevice*) ;TYPE_1__* async; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int * inttrig; } ;


 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int SRF_RT ;
 int SRF_RUNNING ;
 int comedi_set_subdevice_runflags (struct comedi_subdevice*,int,int ) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*) ;

int comedi_cancel(void *d, unsigned int subdevice)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s;
 int ret = 0;

 if (subdevice >= dev->n_subdevices)
  return -EINVAL;

 s = dev->subdevices + subdevice;

 if (s->lock && s->lock != d)
  return -EACCES;
 if (!s->cancel || !s->async)
  return -EINVAL;

 ret = s->cancel(dev, s);

 if (ret)
  return ret;

 comedi_set_subdevice_runflags(s, SRF_RUNNING | SRF_RT, 0);
 s->async->inttrig = ((void*)0);
 s->busy = ((void*)0);

 return 0;
}
