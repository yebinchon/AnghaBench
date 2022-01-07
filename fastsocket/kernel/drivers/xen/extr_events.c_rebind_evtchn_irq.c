
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {scalar_t__ type; } ;


 int BUG_ON (int) ;
 scalar_t__ IRQT_UNBOUND ;
 int cpumask_of (int ) ;
 int disable_irq (int) ;
 int enable_irq (int) ;
 int* evtchn_to_irq ;
 struct irq_info* info_for_irq (int) ;
 int * irq_info ;
 int irq_mapping_update_lock ;
 int irq_set_affinity (int,int ) ;
 int mk_evtchn_info (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void rebind_evtchn_irq(int evtchn, int irq)
{
 struct irq_info *info = info_for_irq(irq);



 disable_irq(irq);

 mutex_lock(&irq_mapping_update_lock);


 BUG_ON(evtchn_to_irq[evtchn] != -1);


 BUG_ON(info->type == IRQT_UNBOUND);

 evtchn_to_irq[evtchn] = irq;
 irq_info[irq] = mk_evtchn_info(evtchn);

 mutex_unlock(&irq_mapping_update_lock);


 irq_set_affinity(irq, cpumask_of(0));


 enable_irq(irq);
}
