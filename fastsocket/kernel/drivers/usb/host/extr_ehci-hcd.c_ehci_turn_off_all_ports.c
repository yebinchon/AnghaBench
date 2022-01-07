
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {TYPE_1__* regs; int hcs_params; } ;
struct TYPE_2__ {int * port_status; } ;


 int HCS_N_PORTS (int ) ;
 int PORT_RWC_BITS ;
 int ehci_writel (struct ehci_hcd*,int ,int *) ;

__attribute__((used)) static void ehci_turn_off_all_ports(struct ehci_hcd *ehci)
{
 int port = HCS_N_PORTS(ehci->hcs_params);

 while (port--)
  ehci_writel(ehci, PORT_RWC_BITS,
    &ehci->regs->port_status[port]);
}
