
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct c67x00_urb_priv* hcpriv; } ;
struct c67x00_urb_priv {int status; int hep_node; } ;
struct c67x00_hcd {int lock; } ;


 int c67x00_hcd_to_hcd (struct c67x00_hcd*) ;
 int c67x00_release_urb (struct c67x00_hcd*,struct urb*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_hcd_giveback_urb (int ,struct urb*,int) ;
 int usb_hcd_unlink_urb_from_ep (int ,struct urb*) ;

__attribute__((used)) static void
c67x00_giveback_urb(struct c67x00_hcd *c67x00, struct urb *urb, int status)
{
 struct c67x00_urb_priv *urbp;

 if (!urb)
  return;

 urbp = urb->hcpriv;
 urbp->status = status;

 list_del_init(&urbp->hep_node);

 c67x00_release_urb(c67x00, urb);
 usb_hcd_unlink_urb_from_ep(c67x00_hcd_to_hcd(c67x00), urb);
 spin_unlock(&c67x00->lock);
 usb_hcd_giveback_urb(c67x00_hcd_to_hcd(c67x00), urb, urbp->status);
 spin_lock(&c67x00->lock);
}
