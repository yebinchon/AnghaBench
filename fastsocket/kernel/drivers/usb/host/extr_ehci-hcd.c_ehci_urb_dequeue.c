
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {scalar_t__ hcpriv; int pipe; } ;
struct ehci_qh {int qh_state; } ;
struct ehci_hcd {int lock; } ;
 int ehci_dbg (struct ehci_hcd*,char*,struct ehci_qh*,int ) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int intr_deschedule (struct ehci_hcd*,struct ehci_qh*) ;
 int qh_completions (struct ehci_hcd*,struct ehci_qh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlink_async (struct ehci_hcd*,struct ehci_qh*) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static int ehci_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 struct ehci_qh *qh;
 unsigned long flags;
 int rc;

 spin_lock_irqsave (&ehci->lock, flags);
 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (rc)
  goto done;

 switch (usb_pipetype (urb->pipe)) {


 default:
  qh = (struct ehci_qh *) urb->hcpriv;
  if (!qh)
   break;
  switch (qh->qh_state) {
  case 130:
  case 132:
   unlink_async(ehci, qh);
   break;
  case 129:
  case 128:

   break;
  case 131:

   qh_completions(ehci, qh);
   break;
  }
  break;

 case 134:
  qh = (struct ehci_qh *) urb->hcpriv;
  if (!qh)
   break;
  switch (qh->qh_state) {
  case 130:
  case 132:
   intr_deschedule (ehci, qh);
   break;
  case 131:
   qh_completions (ehci, qh);
   break;
  default:
   ehci_dbg (ehci, "bogus qh %p state %d\n",
     qh, qh->qh_state);
   goto done;
  }
  break;

 case 133:




  break;
 }
done:
 spin_unlock_irqrestore (&ehci->lock, flags);
 return rc;
}
