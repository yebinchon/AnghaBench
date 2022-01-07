
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __xen_evtchn_do_upcall () ;
 int exit_idle () ;
 int irq_enter () ;
 int irq_exit () ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;

void xen_evtchn_do_upcall(struct pt_regs *regs)
{
 struct pt_regs *old_regs = set_irq_regs(regs);

 exit_idle();
 irq_enter();

 __xen_evtchn_do_upcall();

 irq_exit();
 set_irq_regs(old_regs);
}
