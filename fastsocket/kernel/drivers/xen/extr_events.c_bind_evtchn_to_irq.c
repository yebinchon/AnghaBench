
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* evtchn_to_irq ;
 int find_unbound_irq () ;
 int handle_edge_irq ;
 int * irq_info ;
 int irq_mapping_update_lock ;
 int mk_evtchn_info (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_irq_chip_and_handler_name (int,int *,int ,char*) ;
 int xen_dynamic_chip ;

int bind_evtchn_to_irq(unsigned int evtchn)
{
 int irq;

 mutex_lock(&irq_mapping_update_lock);

 irq = evtchn_to_irq[evtchn];

 if (irq == -1) {
  irq = find_unbound_irq();

  set_irq_chip_and_handler_name(irq, &xen_dynamic_chip,
           handle_edge_irq, "event");

  evtchn_to_irq[evtchn] = irq;
  irq_info[irq] = mk_evtchn_info(evtchn);
 }

 mutex_unlock(&irq_mapping_update_lock);

 return irq;
}
