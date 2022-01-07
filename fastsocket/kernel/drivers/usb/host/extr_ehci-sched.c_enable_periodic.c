
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {int next_uframe; int periodic_size; int last_periodic_enable; int broken_periodic; TYPE_1__* regs; int periodic_sched; } ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int frame_index; int command; int status; } ;


 int CMD_PSE ;
 int HC_STATE_RUNNING ;
 int STS_PSS ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 TYPE_2__* ehci_to_hcd (struct ehci_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int handshake_on_error_set_halt (struct ehci_hcd*,int *,int ,int ,int) ;
 int ktime_get_real () ;
 scalar_t__ unlikely (int ) ;
 int usb_hc_died (TYPE_2__*) ;

__attribute__((used)) static int enable_periodic (struct ehci_hcd *ehci)
{
 u32 cmd;
 int status;

 if (ehci->periodic_sched++)
  return 0;




 status = handshake_on_error_set_halt(ehci, &ehci->regs->status,
          STS_PSS, 0, 9 * 125);
 if (status) {
  usb_hc_died(ehci_to_hcd(ehci));
  return status;
 }

 cmd = ehci_readl(ehci, &ehci->regs->command) | CMD_PSE;
 ehci_writel(ehci, cmd, &ehci->regs->command);

 ehci_to_hcd(ehci)->state = HC_STATE_RUNNING;


 ehci->next_uframe = ehci_readl(ehci, &ehci->regs->frame_index)
  % (ehci->periodic_size << 3);
 if (unlikely(ehci->broken_periodic))
  ehci->last_periodic_enable = ktime_get_real();
 return 0;
}
