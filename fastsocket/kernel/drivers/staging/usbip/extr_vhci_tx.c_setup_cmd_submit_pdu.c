
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vhci_priv {int seqnum; struct vhci_device* vdev; } ;
struct vhci_device {int devid; } ;
struct TYPE_5__ {int setup; } ;
struct TYPE_6__ {TYPE_2__ cmd_submit; } ;
struct TYPE_4__ {int ep; int direction; int devid; int seqnum; int command; } ;
struct usbip_header {TYPE_3__ u; TYPE_1__ base; } ;
struct urb {scalar_t__ setup_packet; int pipe; scalar_t__ hcpriv; } ;


 int USBIP_CMD_SUBMIT ;
 int USBIP_DIR_IN ;
 int USBIP_DIR_OUT ;
 int memcpy (int ,scalar_t__,int) ;
 int usb_pipedevice (int ) ;
 int usb_pipeendpoint (int ) ;
 scalar_t__ usb_pipein (int ) ;
 int usbip_dbg_vhci_tx (char*,int ,int ) ;
 int usbip_pack_pdu (struct usbip_header*,struct urb*,int ,int) ;

__attribute__((used)) static void setup_cmd_submit_pdu(struct usbip_header *pdup, struct urb *urb)
{
 struct vhci_priv *priv = ((struct vhci_priv *)urb->hcpriv);
 struct vhci_device *vdev = priv->vdev;

 usbip_dbg_vhci_tx("URB, local devnum %u, remote devid %u\n",
    usb_pipedevice(urb->pipe), vdev->devid);

 pdup->base.command = USBIP_CMD_SUBMIT;
 pdup->base.seqnum = priv->seqnum;
 pdup->base.devid = vdev->devid;
 if (usb_pipein(urb->pipe))
  pdup->base.direction = USBIP_DIR_IN;
 else
  pdup->base.direction = USBIP_DIR_OUT;
 pdup->base.ep = usb_pipeendpoint(urb->pipe);

 usbip_pack_pdu(pdup, urb, USBIP_CMD_SUBMIT, 1);

 if (urb->setup_packet)
  memcpy(pdup->u.cmd_submit.setup, urb->setup_packet, 8);
}
