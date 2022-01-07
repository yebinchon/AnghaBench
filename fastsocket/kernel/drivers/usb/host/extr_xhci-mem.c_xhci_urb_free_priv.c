
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct urb_priv {struct urb_priv** td; } ;


 int kfree (struct urb_priv*) ;

void xhci_urb_free_priv(struct xhci_hcd *xhci, struct urb_priv *urb_priv)
{
 if (urb_priv) {
  kfree(urb_priv->td[0]);
  kfree(urb_priv);
 }
}
