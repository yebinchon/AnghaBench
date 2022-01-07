
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct sisusb_usb_data* context; } ;
struct sisusb_usb_data {int completein; int wait_q; int present; int sisusb_dev; } ;


 int wake_up (int *) ;

__attribute__((used)) static void
sisusb_bulk_completein(struct urb *urb)
{
 struct sisusb_usb_data *sisusb = urb->context;

 if (!sisusb || !sisusb->sisusb_dev || !sisusb->present)
  return;

 sisusb->completein = 1;
 wake_up(&sisusb->wait_q);
}
