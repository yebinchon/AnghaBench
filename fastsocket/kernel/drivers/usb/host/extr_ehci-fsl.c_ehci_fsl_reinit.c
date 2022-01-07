
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int dummy; } ;


 int ehci_port_power (struct ehci_hcd*,int ) ;
 int ehci_to_hcd (struct ehci_hcd*) ;
 int mpc83xx_usb_setup (int ) ;

__attribute__((used)) static int ehci_fsl_reinit(struct ehci_hcd *ehci)
{
 mpc83xx_usb_setup(ehci_to_hcd(ehci));
 ehci_port_power(ehci, 0);

 return 0;
}
