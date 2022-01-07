
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int state; } ;
struct oxu_hcd {TYPE_1__* regs; int lock; scalar_t__ async; int watchdog; } ;
struct TYPE_2__ {int status; int configured_flag; int intr_enable; } ;


 scalar_t__ HC_IS_RUNNING (int ) ;
 int dbg_status (struct oxu_hcd*,char*,int ) ;
 int del_timer_sync (int *) ;
 int ehci_mem_cleanup (struct oxu_hcd*) ;
 int ehci_port_power (struct oxu_hcd*,int ) ;
 int ehci_quiesce (struct oxu_hcd*) ;
 int ehci_reset (struct oxu_hcd*) ;
 int ehci_work (struct oxu_hcd*) ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int readl (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void oxu_stop(struct usb_hcd *hcd)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);


 ehci_port_power(oxu, 0);


 del_timer_sync(&oxu->watchdog);

 spin_lock_irq(&oxu->lock);
 if (HC_IS_RUNNING(hcd->state))
  ehci_quiesce(oxu);

 ehci_reset(oxu);
 writel(0, &oxu->regs->intr_enable);
 spin_unlock_irq(&oxu->lock);


 writel(0, &oxu->regs->configured_flag);


 spin_lock_irq(&oxu->lock);
 if (oxu->async)
  ehci_work(oxu);
 spin_unlock_irq(&oxu->lock);
 ehci_mem_cleanup(oxu);

 dbg_status(oxu, "oxu_stop completed", readl(&oxu->regs->status));
}
