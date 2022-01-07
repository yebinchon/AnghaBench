
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_complete_t ;
struct TYPE_2__ {int bmAttributes; int bInterval; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_device {struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;
struct urb {scalar_t__ actual_length; struct completion* context; } ;
struct completion {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int PIPE_INTERRUPT ;
 int USB_ENDPOINT_XFERTYPE_MASK ;
 int USB_ENDPOINT_XFER_INT ;
 int init_completion (struct completion*) ;
 scalar_t__ usb_api_blocking_completion ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,unsigned int,void*,unsigned int,int ,int *) ;
 int usb_fill_int_urb (struct urb*,struct usb_device*,unsigned int,void*,unsigned int,int ,int *,int ) ;
 unsigned int usb_pipeendpoint (unsigned int) ;
 scalar_t__ usb_pipein (unsigned int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int vstusb_fill_and_send_urb(struct urb *urb,
        struct usb_device *usb_dev,
        unsigned int pipe, void *data,
        unsigned int len, struct completion *done)
{
 struct usb_host_endpoint *ep;
 struct usb_host_endpoint **hostep;
 unsigned int pipend;

 int status;

 hostep = usb_pipein(pipe) ? usb_dev->ep_in : usb_dev->ep_out;
 pipend = usb_pipeendpoint(pipe);
 ep = hostep[pipend];

 if (!ep || (len == 0))
  return -EINVAL;

 if ((ep->desc.bmAttributes & USB_ENDPOINT_XFERTYPE_MASK)
     == USB_ENDPOINT_XFER_INT) {
  pipe = (pipe & ~(3 << 30)) | (PIPE_INTERRUPT << 30);
  usb_fill_int_urb(urb, usb_dev, pipe, data, len,
     (usb_complete_t)usb_api_blocking_completion,
     ((void*)0), ep->desc.bInterval);
 } else
  usb_fill_bulk_urb(urb, usb_dev, pipe, data, len,
      (usb_complete_t)usb_api_blocking_completion,
      ((void*)0));

 init_completion(done);
 urb->context = done;
 urb->actual_length = 0;
 status = usb_submit_urb(urb, GFP_KERNEL);

 return status;
}
