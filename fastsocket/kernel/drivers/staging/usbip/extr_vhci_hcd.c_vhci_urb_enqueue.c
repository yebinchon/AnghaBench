
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int status; } ;
struct vhci_device {TYPE_2__* udev; TYPE_1__ ud; int rhport; } ;
struct usb_hcd {int dummy; } ;
struct usb_ctrlrequest {int bRequest; int wValue; } ;
struct urb {int status; TYPE_2__* dev; scalar_t__ setup_packet; int pipe; scalar_t__ transfer_buffer_length; int transfer_buffer; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ __u8 ;
struct TYPE_7__ {int lock; int pending_port; } ;
struct TYPE_6__ {struct device dev; } ;


 int BUG_ON (int) ;
 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ PIPE_CONTROL ;
 int USB_DT_DEVICE ;


 int VDEV_ST_USED ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,int ) ;
 struct vhci_device* port_to_vdev (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_3__* the_controller ;
 int usb_hcd_giveback_urb (int ,struct urb*,int) ;
 int usb_hcd_link_urb_to_ep (struct usb_hcd*,struct urb*) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;
 scalar_t__ usb_pipedevice (int ) ;
 scalar_t__ usb_pipetype (int ) ;
 int usbip_dbg_vhci_hc (char*,...) ;
 int vhci_to_hcd (TYPE_3__*) ;
 int vhci_tx_urb (struct urb*) ;

__attribute__((used)) static int vhci_urb_enqueue(struct usb_hcd *hcd, struct urb *urb,
       gfp_t mem_flags)
{
 struct device *dev = &urb->dev->dev;
 int ret = 0;
 unsigned long flags;

 usbip_dbg_vhci_hc("enter, usb_hcd %p urb %p mem_flags %d\n",
      hcd, urb, mem_flags);


 BUG_ON(!urb->transfer_buffer && urb->transfer_buffer_length);

 spin_lock_irqsave(&the_controller->lock, flags);

 if (urb->status != -EINPROGRESS) {
  dev_err(dev, "URB already unlinked!, status %d\n", urb->status);
  spin_unlock_irqrestore(&the_controller->lock, flags);
  return urb->status;
 }

 ret = usb_hcd_link_urb_to_ep(hcd, urb);
 if (ret)
  goto no_need_unlink;
 if (usb_pipedevice(urb->pipe) == 0) {
  __u8 type = usb_pipetype(urb->pipe);
  struct usb_ctrlrequest *ctrlreq =
    (struct usb_ctrlrequest *) urb->setup_packet;
  struct vhci_device *vdev =
    port_to_vdev(the_controller->pending_port);

  if (type != PIPE_CONTROL || !ctrlreq) {
   dev_err(dev, "invalid request to devnum 0\n");
   ret = -EINVAL;
   goto no_need_xmit;
  }

  switch (ctrlreq->bRequest) {
  case 128:

   dev_info(dev, "SetAddress Request (%d) to port %d\n",
     ctrlreq->wValue, vdev->rhport);

   vdev->udev = urb->dev;

   spin_lock(&vdev->ud.lock);
   vdev->ud.status = VDEV_ST_USED;
   spin_unlock(&vdev->ud.lock);

   if (urb->status == -EINPROGRESS) {


    urb->status = 0;
   }

   goto no_need_xmit;

  case 129:
   if (ctrlreq->wValue == (USB_DT_DEVICE << 8))
    usbip_dbg_vhci_hc("Not yet?: "
      "Get_Descriptor to device 0 "
      "(get max pipe size)\n");


   vdev->udev = urb->dev;
   goto out;

  default:

   dev_err(dev, "invalid request to devnum 0 bRequest %u, "
    "wValue %u\n", ctrlreq->bRequest,
    ctrlreq->wValue);
   ret = -EINVAL;
   goto no_need_xmit;
  }

 }

out:
 vhci_tx_urb(urb);

 spin_unlock_irqrestore(&the_controller->lock, flags);

 return 0;

no_need_xmit:
 usb_hcd_unlink_urb_from_ep(hcd, urb);
no_need_unlink:
 spin_unlock_irqrestore(&the_controller->lock, flags);

 usb_hcd_giveback_urb(vhci_to_hcd(the_controller), urb, urb->status);

 return ret;
}
