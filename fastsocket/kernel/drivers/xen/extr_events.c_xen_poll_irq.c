
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_poll {int nr_ports; int ports; scalar_t__ timeout; } ;
typedef int evtchn_port_t ;


 int BUG () ;
 scalar_t__ HYPERVISOR_sched_op (int ,struct sched_poll*) ;
 int SCHEDOP_poll ;
 scalar_t__ VALID_EVTCHN (int ) ;
 int evtchn_from_irq (int) ;
 int set_xen_guest_handle (int ,int *) ;

void xen_poll_irq(int irq)
{
 evtchn_port_t evtchn = evtchn_from_irq(irq);

 if (VALID_EVTCHN(evtchn)) {
  struct sched_poll poll;

  poll.nr_ports = 1;
  poll.timeout = 0;
  set_xen_guest_handle(poll.ports, &evtchn);

  if (HYPERVISOR_sched_op(SCHEDOP_poll, &poll) != 0)
   BUG();
 }
}
