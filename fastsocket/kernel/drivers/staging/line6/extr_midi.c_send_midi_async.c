
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_line6_pod {int dummy; } ;
struct usb_line6 {TYPE_3__* usbdev; TYPE_1__* line6midi; int ifcdev; int interval; int ep_control_write; } ;
struct urb {scalar_t__ actual_length; } ;
struct TYPE_6__ {int idProduct; } ;
struct TYPE_7__ {TYPE_2__ descriptor; } ;
struct TYPE_5__ {int num_active_send_urbs; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;







 int MISSING_CASE ;
 int dev_err (int ,char*) ;
 unsigned char* kmalloc (int,int ) ;
 int line6_write_hexdump (struct usb_line6*,char,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int midi_sent ;
 int pod_midi_postprocess (struct usb_line6_pod*,unsigned char*,int) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (struct urb*,TYPE_3__*,int ,unsigned char*,int,int ,struct usb_line6*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (TYPE_3__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int send_midi_async(struct usb_line6 *line6, unsigned char *data,
      int length)
{
 struct urb *urb;
 int retval;
 unsigned char *transfer_buffer;

 urb = usb_alloc_urb(0, GFP_ATOMIC);

 if (urb == 0) {
  dev_err(line6->ifcdev, "Out of memory\n");
  return -ENOMEM;
 }





 transfer_buffer = kmalloc(length, GFP_ATOMIC);

 if (transfer_buffer == 0) {
  usb_free_urb(urb);
  dev_err(line6->ifcdev, "Out of memory\n");
  return -ENOMEM;
 }

 memcpy(transfer_buffer, data, length);
 usb_fill_int_urb(urb, line6->usbdev,
    usb_sndbulkpipe(line6->usbdev,
      line6->ep_control_write),
    transfer_buffer, length, midi_sent, line6,
    line6->interval);
 urb->actual_length = 0;
 retval = usb_submit_urb(urb, GFP_ATOMIC);

 if (retval < 0) {
  dev_err(line6->ifcdev, "usb_submit_urb failed\n");
  usb_free_urb(urb);
  return -EINVAL;
 }

 ++line6->line6midi->num_active_send_urbs;

 switch (line6->usbdev->descriptor.idProduct) {
 case 134:
 case 133:
 case 132:
 case 130:
 case 129:
 case 128:
 case 131:
  pod_midi_postprocess((struct usb_line6_pod *)line6, data,
         length);
  break;

 default:
  MISSING_CASE;
 }

 return 0;
}
