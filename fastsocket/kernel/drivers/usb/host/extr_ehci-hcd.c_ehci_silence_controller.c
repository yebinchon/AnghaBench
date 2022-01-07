
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int configured_flag; } ;


 int ehci_halt (struct ehci_hcd*) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_turn_off_all_ports (struct ehci_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int ,int *) ;

__attribute__((used)) static void ehci_silence_controller(struct ehci_hcd *ehci)
{
 ehci_halt(ehci);
 ehci_turn_off_all_ports(ehci);


 ehci_writel(ehci, 0, &ehci->regs->configured_flag);


 ehci_readl(ehci, &ehci->regs->configured_flag);
}
