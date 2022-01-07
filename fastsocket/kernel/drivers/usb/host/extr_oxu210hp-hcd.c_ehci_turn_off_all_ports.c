
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_hcd {TYPE_1__* regs; int hcs_params; } ;
struct TYPE_2__ {int * port_status; } ;


 int HCS_N_PORTS (int ) ;
 int PORT_RWC_BITS ;
 int writel (int ,int *) ;

__attribute__((used)) static void ehci_turn_off_all_ports(struct oxu_hcd *oxu)
{
 int port = HCS_N_PORTS(oxu->hcs_params);

 while (port--)
  writel(PORT_RWC_BITS, &oxu->regs->port_status[port]);
}
