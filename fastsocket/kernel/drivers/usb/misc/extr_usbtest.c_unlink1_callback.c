
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; int context; } ;


 int GFP_ATOMIC ;
 int complete (int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void unlink1_callback (struct urb *urb)
{
 int status = urb->status;


 if (!status)
  status = usb_submit_urb (urb, GFP_ATOMIC);
 if (status) {
  urb->status = status;
  complete(urb->context);
 }
}
