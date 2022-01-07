
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int clockevents_chain ;
 int clockevents_lock ;
 int raw_notifier_chain_register (int *,struct notifier_block*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clockevents_register_notifier(struct notifier_block *nb)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&clockevents_lock, flags);
 ret = raw_notifier_chain_register(&clockevents_chain, nb);
 spin_unlock_irqrestore(&clockevents_lock, flags);

 return ret;
}
