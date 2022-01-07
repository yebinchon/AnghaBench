
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int bEndpointAddress; } ;
struct usb_host_endpoint {struct ehci_qh* hcpriv; TYPE_4__ desc; } ;
struct usb_hcd {int state; } ;
struct TYPE_7__ {struct ehci_qh* qh; } ;
struct ehci_qh {int qh_state; int qtd_list; int clearing_tt; TYPE_3__ qh_next; int * hw; } ;
struct ehci_hcd {int lock; TYPE_2__* async; } ;
struct TYPE_5__ {struct ehci_qh* qh; } ;
struct TYPE_6__ {TYPE_1__ qh_next; } ;


 int HC_IS_RUNNING (int ) ;





 int ehci_err (struct ehci_hcd*,char*,struct ehci_qh*,int ,int,char*) ;
 int ehci_vdbg (struct ehci_hcd*,char*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int list_empty (int *) ;
 int qh_put (struct ehci_qh*) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlink_async (struct ehci_hcd*,struct ehci_qh*) ;

__attribute__((used)) static void
ehci_endpoint_disable (struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 unsigned long flags;
 struct ehci_qh *qh, *tmp;




rescan:
 spin_lock_irqsave (&ehci->lock, flags);
 qh = ep->hcpriv;
 if (!qh)
  goto done;




 if (qh->hw == ((void*)0)) {
  ehci_vdbg (ehci, "iso delay\n");
  goto idle_timeout;
 }

 if (!HC_IS_RUNNING (hcd->state))
  qh->qh_state = 131;
 switch (qh->qh_state) {
 case 130:
 case 132:
  for (tmp = ehci->async->qh_next.qh;
    tmp && tmp != qh;
    tmp = tmp->qh_next.qh)
   continue;



  if (tmp)
   unlink_async(ehci, qh);

 case 129:
 case 128:
idle_timeout:
  spin_unlock_irqrestore (&ehci->lock, flags);
  schedule_timeout_uninterruptible(1);
  goto rescan;
 case 131:
  if (qh->clearing_tt)
   goto idle_timeout;
  if (list_empty (&qh->qtd_list)) {
   qh_put (qh);
   break;
  }

 default:



  ehci_err (ehci, "qh %p (#%02x) state %d%s\n",
   qh, ep->desc.bEndpointAddress, qh->qh_state,
   list_empty (&qh->qtd_list) ? "" : "(has tds)");
  break;
 }
 ep->hcpriv = ((void*)0);
done:
 spin_unlock_irqrestore (&ehci->lock, flags);
 return;
}
