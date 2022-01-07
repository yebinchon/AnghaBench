
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {scalar_t__ fsbr; } ;
struct uhci_hcd {int fsbr_is_wanted; int fsbr_timer; scalar_t__ fsbr_expiring; int fsbr_is_on; } ;


 int del_timer (int *) ;
 int uhci_fsbr_on (struct uhci_hcd*) ;

__attribute__((used)) static void uhci_urbp_wants_fsbr(struct uhci_hcd *uhci, struct urb_priv *urbp)
{
 if (urbp->fsbr) {
  uhci->fsbr_is_wanted = 1;
  if (!uhci->fsbr_is_on)
   uhci_fsbr_on(uhci);
  else if (uhci->fsbr_expiring) {
   uhci->fsbr_expiring = 0;
   del_timer(&uhci->fsbr_timer);
  }
 }
}
