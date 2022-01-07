
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct c67x00_sie {struct c67x00_hcd* private_data; } ;
struct c67x00_hcd {int dummy; } ;


 struct usb_hcd* c67x00_hcd_to_hcd (struct c67x00_hcd*) ;
 int c67x00_sched_stop_scheduler (struct c67x00_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

void c67x00_hcd_remove(struct c67x00_sie *sie)
{
 struct c67x00_hcd *c67x00 = sie->private_data;
 struct usb_hcd *hcd = c67x00_hcd_to_hcd(c67x00);

 c67x00_sched_stop_scheduler(c67x00);
 usb_remove_hcd(hcd);
 usb_put_hcd(hcd);
}
