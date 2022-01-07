
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ actual_length; struct sisusb_urb_context* context; } ;
struct sisusb_usb_data {int wait_q; int * urbstatus; int present; int sisusb_dev; } ;
struct sisusb_urb_context {size_t urbindex; int * actual_length; struct sisusb_usb_data* sisusb; } ;


 int SU_URB_BUSY ;
 int wake_up (int *) ;

__attribute__((used)) static void
sisusb_bulk_completeout(struct urb *urb)
{
 struct sisusb_urb_context *context = urb->context;
 struct sisusb_usb_data *sisusb;

 if (!context)
  return;

 sisusb = context->sisusb;

 if (!sisusb || !sisusb->sisusb_dev || !sisusb->present)
  return;


 if (context->actual_length)
  *(context->actual_length) += urb->actual_length;


 sisusb->urbstatus[context->urbindex] &= ~SU_URB_BUSY;
 wake_up(&sisusb->wait_q);
}
