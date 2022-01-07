
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; TYPE_2__ qh_next; TYPE_1__* hw; } ;
struct ehci_hcd {TYPE_3__* regs; struct ehci_qh* qh_scan_next; struct ehci_qh* async; struct ehci_qh* reclaim; int lock; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_7__ {int command; } ;
struct TYPE_5__ {int hw_next; } ;


 int BUG () ;
 int CMD_ASE ;
 int CMD_IAAD ;
 int HC_IS_RUNNING (scalar_t__) ;
 scalar_t__ HC_STATE_HALT ;
 scalar_t__ QH_STATE_LINKED ;
 scalar_t__ QH_STATE_UNLINK ;
 scalar_t__ QH_STATE_UNLINK_WAIT ;
 int TIMER_ASYNC_OFF ;
 int assert_spin_locked (int *) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 TYPE_4__* ehci_to_hcd (struct ehci_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int end_unlink_async (struct ehci_hcd*) ;
 int iaa_watchdog_start (struct ehci_hcd*) ;
 struct ehci_qh* qh_get (struct ehci_qh*) ;
 int timer_action_done (struct ehci_hcd*,int ) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static void start_unlink_async (struct ehci_hcd *ehci, struct ehci_qh *qh)
{
 int cmd = ehci_readl(ehci, &ehci->regs->command);
 struct ehci_qh *prev;
 if (unlikely (qh == ehci->async)) {

  if (ehci_to_hcd(ehci)->state != HC_STATE_HALT
    && !ehci->reclaim) {

   ehci_writel(ehci, cmd & ~CMD_ASE,
        &ehci->regs->command);
   wmb ();

   timer_action_done (ehci, TIMER_ASYNC_OFF);
  }
  return;
 }

 qh->qh_state = QH_STATE_UNLINK;
 ehci->reclaim = qh = qh_get (qh);

 prev = ehci->async;
 while (prev->qh_next.qh != qh)
  prev = prev->qh_next.qh;

 prev->hw->hw_next = qh->hw->hw_next;
 prev->qh_next = qh->qh_next;
 if (ehci->qh_scan_next == qh)
  ehci->qh_scan_next = qh->qh_next.qh;
 wmb ();


 if (unlikely(!HC_IS_RUNNING(ehci_to_hcd(ehci)->state))) {



  end_unlink_async (ehci);
  return;
 }

 cmd |= CMD_IAAD;
 ehci_writel(ehci, cmd, &ehci->regs->command);
 (void)ehci_readl(ehci, &ehci->regs->command);
 iaa_watchdog_start(ehci);
}
