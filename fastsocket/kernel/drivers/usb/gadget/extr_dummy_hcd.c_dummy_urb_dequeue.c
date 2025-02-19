
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct dummy {scalar_t__ rh_state; int lock; int timer; int urbp_list; } ;


 scalar_t__ DUMMY_RH_RUNNING ;
 struct dummy* hcd_to_dummy (struct usb_hcd*) ;
 int jiffies ;
 int list_empty (int *) ;
 int mod_timer (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;

__attribute__((used)) static int dummy_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct dummy *dum;
 unsigned long flags;
 int rc;



 dum = hcd_to_dummy (hcd);
 spin_lock_irqsave (&dum->lock, flags);

 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (!rc && dum->rh_state != DUMMY_RH_RUNNING &&
   !list_empty(&dum->urbp_list))
  mod_timer (&dum->timer, jiffies);

 spin_unlock_irqrestore (&dum->lock, flags);
 return rc;
}
