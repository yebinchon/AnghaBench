
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* dev; } ;
struct uhci_qh {scalar_t__ state; int skel; } ;
struct uhci_hcd {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; } ;


 int EINVAL ;
 scalar_t__ QH_STATE_ACTIVE ;
 int SKEL_BULK ;
 scalar_t__ USB_SPEED_LOW ;
 int uhci_add_fsbr (struct uhci_hcd*,struct urb*) ;
 int uhci_submit_common (struct uhci_hcd*,struct urb*,struct uhci_qh*) ;

__attribute__((used)) static int uhci_submit_bulk(struct uhci_hcd *uhci, struct urb *urb,
  struct uhci_qh *qh)
{
 int ret;


 if (urb->dev->speed == USB_SPEED_LOW)
  return -EINVAL;

 if (qh->state != QH_STATE_ACTIVE)
  qh->skel = SKEL_BULK;
 ret = uhci_submit_common(uhci, urb, qh);
 if (ret == 0)
  uhci_add_fsbr(uhci, urb);
 return ret;
}
