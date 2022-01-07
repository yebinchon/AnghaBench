
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbip_device {scalar_t__ side; int tcp_socket; } ;
struct urb {int transfer_buffer_length; int actual_length; TYPE_1__* dev; scalar_t__ transfer_buffer; int pipe; } ;
struct TYPE_2__ {int dev; } ;


 int EPIPE ;
 int SDEV_EVENT_ERROR_TCP ;
 scalar_t__ USBIP_STUB ;
 int VDEV_EVENT_ERROR_TCP ;
 int dev_err (int *,char*,int) ;
 scalar_t__ usb_pipein (int ) ;
 scalar_t__ usb_pipeout (int ) ;
 int usbip_event_add (struct usbip_device*,int ) ;
 int usbip_xmit (int ,int ,char*,int,int ) ;

int usbip_recv_xbuff(struct usbip_device *ud, struct urb *urb)
{
 int ret;
 int size;

 if (ud->side == USBIP_STUB) {


  if (usb_pipein(urb->pipe))
   return 0;

  size = urb->transfer_buffer_length;
 } else {


  if (usb_pipeout(urb->pipe))
   return 0;

  size = urb->actual_length;
 }


 if (!(size > 0))
  return 0;

 ret = usbip_xmit(0, ud->tcp_socket, (char *)urb->transfer_buffer,
    size, 0);
 if (ret != size) {
  dev_err(&urb->dev->dev, "recv xbuf, %d\n", ret);
  if (ud->side == USBIP_STUB) {
   usbip_event_add(ud, SDEV_EVENT_ERROR_TCP);
  } else {
   usbip_event_add(ud, VDEV_EVENT_ERROR_TCP);
   return -EPIPE;
  }
 }

 return ret;
}
