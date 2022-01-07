
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int runflags; int spin_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void comedi_set_subdevice_runflags(struct comedi_subdevice *s, unsigned mask,
       unsigned bits)
{
 unsigned long flags;

 spin_lock_irqsave(&s->spin_lock, flags);
 s->runflags &= ~mask;
 s->runflags |= (bits & mask);
 spin_unlock_irqrestore(&s->spin_lock, flags);
}
