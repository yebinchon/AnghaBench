
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
struct oxu_hcd {int lock; TYPE_2__* async; } ;
struct TYPE_7__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ hw_info1; int qh_state; int qtd_list; TYPE_3__ qh_next; } ;
struct TYPE_5__ {struct ehci_qh* qh; } ;
struct TYPE_6__ {TYPE_1__ qh_next; } ;


 int HC_IS_RUNNING (int ) ;



 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int list_empty (int *) ;
 int oxu_err (struct oxu_hcd*,char*,struct ehci_qh*,int ,int,char*) ;
 int oxu_vdbg (struct oxu_hcd*,char*) ;
 int qh_put (struct ehci_qh*) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlink_async (struct oxu_hcd*,struct ehci_qh*) ;

__attribute__((used)) static void oxu_endpoint_disable(struct usb_hcd *hcd,
     struct usb_host_endpoint *ep)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 unsigned long flags;
 struct ehci_qh *qh, *tmp;




rescan:
 spin_lock_irqsave(&oxu->lock, flags);
 qh = ep->hcpriv;
 if (!qh)
  goto done;




 if (qh->hw_info1 == 0) {
  oxu_vdbg(oxu, "iso delay\n");
  goto idle_timeout;
 }

 if (!HC_IS_RUNNING(hcd->state))
  qh->qh_state = 130;
 switch (qh->qh_state) {
 case 129:
  for (tmp = oxu->async->qh_next.qh;
    tmp && tmp != qh;
    tmp = tmp->qh_next.qh)
   continue;

  if (!tmp)
   goto nogood;
  unlink_async(oxu, qh);

 case 128:
idle_timeout:
  spin_unlock_irqrestore(&oxu->lock, flags);
  schedule_timeout_uninterruptible(1);
  goto rescan;
 case 130:
  if (list_empty(&qh->qtd_list)) {
   qh_put(qh);
   break;
  }

 default:
nogood:



  oxu_err(oxu, "qh %p (#%02x) state %d%s\n",
   qh, ep->desc.bEndpointAddress, qh->qh_state,
   list_empty(&qh->qtd_list) ? "" : "(has tds)");
  break;
 }
 ep->hcpriv = ((void*)0);
done:
 spin_unlock_irqrestore(&oxu->lock, flags);
 return;
}
