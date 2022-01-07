
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int lock; scalar_t__ fsbr_expiring; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uhci_fsbr_off (struct uhci_hcd*) ;

__attribute__((used)) static void uhci_fsbr_timeout(unsigned long _uhci)
{
 struct uhci_hcd *uhci = (struct uhci_hcd *) _uhci;
 unsigned long flags;

 spin_lock_irqsave(&uhci->lock, flags);
 if (uhci->fsbr_expiring) {
  uhci->fsbr_expiring = 0;
  uhci_fsbr_off(uhci);
 }
 spin_unlock_irqrestore(&uhci->lock, flags);
}
