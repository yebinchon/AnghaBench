
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int state; } ;
struct ohci_hcd {int dummy; } ;


 int HC_STATE_RUNNING ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_hcd_init (struct ohci_hcd*) ;
 int ohci_init (struct ohci_hcd*) ;
 int ohci_run (struct ohci_hcd*) ;

__attribute__((used)) static int ohci_sh_start(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);

 ohci_hcd_init(ohci);
 ohci_init(ohci);
 ohci_run(ohci);
 hcd->state = HC_STATE_RUNNING;
 return 0;
}
