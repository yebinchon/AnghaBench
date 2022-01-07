
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int runflags; int spin_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned comedi_get_subdevice_runflags(struct comedi_subdevice *s)
{
 unsigned long flags;
 unsigned runflags;

 spin_lock_irqsave(&s->spin_lock, flags);
 runflags = s->runflags;
 spin_unlock_irqrestore(&s->spin_lock, flags);
 return runflags;
}
