
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {int seqnum; int direction; int ep; } ;
struct TYPE_12__ {scalar_t__ transfer_buffer_length; int setup; int number_of_packets; } ;
struct TYPE_13__ {TYPE_1__ cmd_submit; } ;
struct usbip_header {TYPE_3__ base; TYPE_2__ u; } ;
struct usbip_device {int dummy; } ;
struct usb_device {int dummy; } ;
struct stub_priv {TYPE_4__* urb; } ;
struct stub_device {TYPE_10__* interface; struct usbip_device ud; } ;
struct TYPE_15__ {int pipe; int complete; struct usb_device* dev; void* context; void* setup_packet; void* transfer_buffer; } ;
struct TYPE_11__ {int dev; } ;


 int GFP_KERNEL ;
 int SDEV_EVENT_ERROR_MALLOC ;
 int SDEV_EVENT_ERROR_SUBMIT ;
 int USBIP_CMD_SUBMIT ;
 int dev_err (int *,char*,...) ;
 int get_pipe (struct stub_device*,int ,int ) ;
 struct usb_device* interface_to_usbdev (TYPE_10__*) ;
 void* kzalloc (int,int ) ;
 int memcpy (void*,int *,int) ;
 int stub_complete ;
 struct stub_priv* stub_priv_alloc (struct stub_device*,struct usbip_header*) ;
 int tweak_special_requests (TYPE_4__*) ;
 void* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_pipeisoc (int) ;
 int usb_submit_urb (TYPE_4__*,int ) ;
 int usbip_dbg_stub_rx (char*,...) ;
 int usbip_dump_header (struct usbip_header*) ;
 int usbip_dump_urb (TYPE_4__*) ;
 int usbip_event_add (struct usbip_device*,int ) ;
 int usbip_pack_pdu (struct usbip_header*,TYPE_4__*,int ,int ) ;
 scalar_t__ usbip_recv_iso (struct usbip_device*,TYPE_4__*) ;
 scalar_t__ usbip_recv_xbuff (struct usbip_device*,TYPE_4__*) ;

__attribute__((used)) static void stub_recv_cmd_submit(struct stub_device *sdev,
     struct usbip_header *pdu)
{
 int ret;
 struct stub_priv *priv;
 struct usbip_device *ud = &sdev->ud;
 struct usb_device *udev = interface_to_usbdev(sdev->interface);
 int pipe = get_pipe(sdev, pdu->base.ep, pdu->base.direction);


 priv = stub_priv_alloc(sdev, pdu);
 if (!priv)
  return;


 if (usb_pipeisoc(pipe))
  priv->urb = usb_alloc_urb(pdu->u.cmd_submit.number_of_packets,
        GFP_KERNEL);
 else
  priv->urb = usb_alloc_urb(0, GFP_KERNEL);

 if (!priv->urb) {
  dev_err(&sdev->interface->dev, "malloc urb\n");
  usbip_event_add(ud, SDEV_EVENT_ERROR_MALLOC);
  return;
 }


 if (pdu->u.cmd_submit.transfer_buffer_length > 0) {
  priv->urb->transfer_buffer =
   kzalloc(pdu->u.cmd_submit.transfer_buffer_length,
        GFP_KERNEL);
  if (!priv->urb->transfer_buffer) {
   dev_err(&sdev->interface->dev, "malloc x_buff\n");
   usbip_event_add(ud, SDEV_EVENT_ERROR_MALLOC);
   return;
  }
 }


 priv->urb->setup_packet = kzalloc(8, GFP_KERNEL);
 if (!priv->urb->setup_packet) {
  dev_err(&sdev->interface->dev, "allocate setup_packet\n");
  usbip_event_add(ud, SDEV_EVENT_ERROR_MALLOC);
  return;
 }
 memcpy(priv->urb->setup_packet, &pdu->u.cmd_submit.setup, 8);


 priv->urb->context = (void *) priv;
 priv->urb->dev = udev;
 priv->urb->pipe = pipe;
 priv->urb->complete = stub_complete;

 usbip_pack_pdu(pdu, priv->urb, USBIP_CMD_SUBMIT, 0);


 if (usbip_recv_xbuff(ud, priv->urb) < 0)
  return;

 if (usbip_recv_iso(ud, priv->urb) < 0)
  return;


 tweak_special_requests(priv->urb);


 ret = usb_submit_urb(priv->urb, GFP_KERNEL);

 if (ret == 0)
  usbip_dbg_stub_rx("submit urb ok, seqnum %u\n",
       pdu->base.seqnum);
 else {
  dev_err(&sdev->interface->dev, "submit_urb error, %d\n", ret);
  usbip_dump_header(pdu);
  usbip_dump_urb(priv->urb);





  usbip_event_add(ud, SDEV_EVENT_ERROR_SUBMIT);
 }

 usbip_dbg_stub_rx("Leave\n");
 return;
}
