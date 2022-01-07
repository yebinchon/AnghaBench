
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {int broken_periodic; int next_uframe; TYPE_1__* regs; int last_periodic_enable; scalar_t__ periodic_sched; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;
struct TYPE_2__ {int command; int status; } ;


 int CMD_PSE ;
 int STS_PSS ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_to_hcd (struct ehci_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int handshake_on_error_set_halt (struct ehci_hcd*,int *,int ,int ,int) ;
 int ktime_add_us (int ,int) ;
 int ktime_get_real () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int udelay (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int usb_hc_died (int ) ;

__attribute__((used)) static int disable_periodic (struct ehci_hcd *ehci)
{
 u32 cmd;
 int status;

 if (--ehci->periodic_sched)
  return 0;

 if (unlikely(ehci->broken_periodic)) {

  ktime_t safe = ktime_add_us(ehci->last_periodic_enable, 1000);
  ktime_t now = ktime_get_real();
  s64 delay = ktime_us_delta(safe, now);

  if (unlikely(delay > 0))
   udelay(delay);
 }




 status = handshake_on_error_set_halt(ehci, &ehci->regs->status,
          STS_PSS, STS_PSS, 9 * 125);
 if (status) {
  usb_hc_died(ehci_to_hcd(ehci));
  return status;
 }

 cmd = ehci_readl(ehci, &ehci->regs->command) & ~CMD_PSE;
 ehci_writel(ehci, cmd, &ehci->regs->command);


 ehci->next_uframe = -1;
 return 0;
}
