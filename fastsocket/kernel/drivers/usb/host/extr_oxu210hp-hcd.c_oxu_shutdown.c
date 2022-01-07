
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct oxu_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int configured_flag; } ;


 int ehci_halt (struct oxu_hcd*) ;
 int ehci_turn_off_all_ports (struct oxu_hcd*) ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void oxu_shutdown(struct usb_hcd *hcd)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);

 (void) ehci_halt(oxu);
 ehci_turn_off_all_ports(oxu);


 writel(0, &oxu->regs->configured_flag);


 readl(&oxu->regs->configured_flag);
}
