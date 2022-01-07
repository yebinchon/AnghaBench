
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int lost_iaa; } ;
struct ehci_hcd {int lock; TYPE_2__* regs; TYPE_1__ stats; int iaa_watchdog; scalar_t__ reclaim; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int status; int command; } ;


 int CMD_IAAD ;
 int COUNT (int ) ;
 scalar_t__ HC_IS_RUNNING (int ) ;
 int STS_IAA ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 TYPE_3__* ehci_to_hcd (struct ehci_hcd*) ;
 int ehci_vdbg (struct ehci_hcd*,char*,int,int) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int end_unlink_async (struct ehci_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_pending (int *) ;

__attribute__((used)) static void ehci_iaa_watchdog(unsigned long param)
{
 struct ehci_hcd *ehci = (struct ehci_hcd *) param;
 unsigned long flags;

 spin_lock_irqsave (&ehci->lock, flags);






 if (ehci->reclaim
   && !timer_pending(&ehci->iaa_watchdog)
   && HC_IS_RUNNING(ehci_to_hcd(ehci)->state)) {
  u32 cmd, status;







  cmd = ehci_readl(ehci, &ehci->regs->command);
  if (cmd & CMD_IAAD)
   ehci_writel(ehci, cmd & ~CMD_IAAD,
     &ehci->regs->command);







  status = ehci_readl(ehci, &ehci->regs->status);
  if ((status & STS_IAA) || !(cmd & CMD_IAAD)) {
   COUNT (ehci->stats.lost_iaa);
   ehci_writel(ehci, STS_IAA, &ehci->regs->status);
  }

  ehci_vdbg(ehci, "IAA watchdog: status %x cmd %x\n",
    status, cmd);
  end_unlink_async(ehci);
 }

 spin_unlock_irqrestore(&ehci->lock, flags);
}
