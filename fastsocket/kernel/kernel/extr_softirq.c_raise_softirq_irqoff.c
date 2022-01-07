
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raise_softirq_irqoff (unsigned int) ;
 int in_interrupt () ;
 int wakeup_softirqd () ;

inline void raise_softirq_irqoff(unsigned int nr)
{
 __raise_softirq_irqoff(nr);
 if (!in_interrupt())
  wakeup_softirqd();
}
