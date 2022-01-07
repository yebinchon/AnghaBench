
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {unsigned int transfer_flags; int actual_length; int status; } ;
struct sisusb_usb_data {scalar_t__ completein; int wait_q; int sisusb_dev; struct urb* sisurbin; } ;


 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int sisusb_bulk_completein ;
 int usb_fill_bulk_urb (struct urb*,int ,unsigned int,void*,int,int ,struct sisusb_usb_data*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wait_event_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static int
sisusb_bulkin_msg(struct sisusb_usb_data *sisusb, unsigned int pipe, void *data,
 int len, int *actual_length, int timeout, unsigned int tflags)
{
 struct urb *urb = sisusb->sisurbin;
 int retval, readbytes = 0;

 urb->transfer_flags = 0;

 usb_fill_bulk_urb(urb, sisusb->sisusb_dev, pipe, data, len,
   sisusb_bulk_completein, sisusb);

 urb->transfer_flags |= tflags;
 urb->actual_length = 0;

 sisusb->completein = 0;
 retval = usb_submit_urb(urb, GFP_ATOMIC);
 if (retval == 0) {
  wait_event_timeout(sisusb->wait_q, sisusb->completein, timeout);
  if (!sisusb->completein) {

   usb_kill_urb(urb);
   retval = -ETIMEDOUT;
  } else {

   retval = urb->status;
   readbytes = urb->actual_length;
  }
 }

 if (actual_length)
  *actual_length = readbytes;

 return retval;
}
