
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {unsigned int transfer_flags; int actual_length; int status; } ;
struct sisusb_usb_data {int* urbstatus; int wait_q; TYPE_1__* urbout_context; int sisusb_dev; struct urb** sisurbout; } ;
struct TYPE_2__ {int* actual_length; } ;


 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int SU_URB_BUSY ;
 int sisusb_bulk_completeout ;
 int usb_fill_bulk_urb (struct urb*,int ,unsigned int,void*,int,int ,TYPE_1__*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int
sisusb_bulkout_msg(struct sisusb_usb_data *sisusb, int index, unsigned int pipe, void *data,
  int len, int *actual_length, int timeout, unsigned int tflags)
{
 struct urb *urb = sisusb->sisurbout[index];
 int retval, byteswritten = 0;


 urb->transfer_flags = 0;

 usb_fill_bulk_urb(urb, sisusb->sisusb_dev, pipe, data, len,
  sisusb_bulk_completeout, &sisusb->urbout_context[index]);

 urb->transfer_flags |= tflags;
 urb->actual_length = 0;


 sisusb->urbout_context[index].actual_length = (timeout) ?
      ((void*)0) : actual_length;


 sisusb->urbstatus[index] |= SU_URB_BUSY;


 retval = usb_submit_urb(urb, GFP_ATOMIC);


 if ((retval == 0) && timeout) {
  wait_event_timeout(sisusb->wait_q,
       (!(sisusb->urbstatus[index] & SU_URB_BUSY)),
       timeout);
  if (sisusb->urbstatus[index] & SU_URB_BUSY) {

   usb_kill_urb(urb);
   retval = -ETIMEDOUT;
  } else {

   retval = urb->status;
   byteswritten = urb->actual_length;
  }
 }

 if (actual_length)
  *actual_length = byteswritten;

 return retval;
}
