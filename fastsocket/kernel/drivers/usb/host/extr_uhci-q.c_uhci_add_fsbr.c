
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {int fsbr; } ;
struct urb {int transfer_flags; struct urb_priv* hcpriv; } ;
struct uhci_hcd {int dummy; } ;


 int URB_NO_FSBR ;

__attribute__((used)) static void uhci_add_fsbr(struct uhci_hcd *uhci, struct urb *urb)
{
 struct urb_priv *urbp = urb->hcpriv;

 if (!(urb->transfer_flags & URB_NO_FSBR))
  urbp->fsbr = 1;
}
