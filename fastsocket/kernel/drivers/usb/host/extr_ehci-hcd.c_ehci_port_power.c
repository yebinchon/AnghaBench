
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {TYPE_1__* regs; int hcs_params; } ;
struct TYPE_2__ {int command; } ;


 int ClearPortFeature ;
 unsigned int HCS_N_PORTS (int ) ;
 int HCS_PPC (int ) ;
 int SetPortFeature ;
 int USB_PORT_FEAT_POWER ;
 int ehci_dbg (struct ehci_hcd*,char*,char*) ;
 int ehci_hub_control (int ,int ,int ,int ,int *,int ) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_to_hcd (struct ehci_hcd*) ;
 int msleep (int) ;

__attribute__((used)) static void ehci_port_power (struct ehci_hcd *ehci, int is_on)
{
 unsigned port;

 if (!HCS_PPC (ehci->hcs_params))
  return;

 ehci_dbg (ehci, "...power%s ports...\n", is_on ? "up" : "down");
 for (port = HCS_N_PORTS (ehci->hcs_params); port > 0; )
  (void) ehci_hub_control(ehci_to_hcd(ehci),
    is_on ? SetPortFeature : ClearPortFeature,
    USB_PORT_FEAT_POWER,
    port--, ((void*)0), 0);

 ehci_readl(ehci, &ehci->regs->command);
 msleep(20);
}
