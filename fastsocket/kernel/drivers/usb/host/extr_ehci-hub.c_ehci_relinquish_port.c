
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ehci_hcd {int dummy; } ;


 int PORT_OWNER ;
 scalar_t__ ehci_is_TDI (struct ehci_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int set_owner (struct ehci_hcd*,int,int ) ;

__attribute__((used)) static void ehci_relinquish_port(struct usb_hcd *hcd, int portnum)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);

 if (ehci_is_TDI(ehci))
  return;
 set_owner(ehci, --portnum, PORT_OWNER);
}
