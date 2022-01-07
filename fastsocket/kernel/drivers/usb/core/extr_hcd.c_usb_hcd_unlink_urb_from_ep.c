
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int urb_list; } ;


 int hcd_urb_list_lock ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void usb_hcd_unlink_urb_from_ep(struct usb_hcd *hcd, struct urb *urb)
{

 spin_lock(&hcd_urb_list_lock);
 list_del_init(&urb->urb_list);
 spin_unlock(&hcd_urb_list_lock);
}
