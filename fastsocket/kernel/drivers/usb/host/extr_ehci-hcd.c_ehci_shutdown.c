
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ehci_hcd {int lock; int iaa_watchdog; int watchdog; } ;


 int del_timer_sync (int *) ;
 int ehci_silence_controller (struct ehci_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ehci_shutdown(struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);

 del_timer_sync(&ehci->watchdog);
 del_timer_sync(&ehci->iaa_watchdog);

 spin_lock_irq(&ehci->lock);
 ehci_silence_controller(ehci);
 spin_unlock_irq(&ehci->lock);
}
