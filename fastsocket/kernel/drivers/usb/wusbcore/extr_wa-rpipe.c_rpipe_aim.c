
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wahc {TYPE_1__* usb_iface; } ;
struct TYPE_6__ {int bDeviceAddress; int bEndpointAddress; int bmAttribute; int bmRetryOptions; int wRPipeIndex; scalar_t__ wNumTransactionErrors; scalar_t__ bOverTheAirInterval; int bInterval; scalar_t__ bMaxDataSequence; int dwCurrentWindow; scalar_t__ bDataSequence; int bSpeed; int bHSHubPort; scalar_t__ bHSHubAddress; void* wMaxPacketSize; void* wBlocks; int wRequests; } ;
struct wa_rpipe {TYPE_3__ descr; int segs_available; } ;
struct usb_wireless_ep_comp_descriptor {scalar_t__ bMaxSequence; } ;
struct TYPE_5__ {int bEndpointAddress; int wMaxPacketSize; int bmAttributes; int bInterval; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct usb_device {int devnum; int portnum; int authenticated; scalar_t__ wusb; } ;
struct urb {struct usb_device* dev; int pipe; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {struct device dev; } ;


 int ENOMSG ;
 int UWB_PHY_RATE_200 ;
 int UWB_PHY_RATE_53 ;
 int __rpipe_reset (struct wahc*,int ) ;
 int __rpipe_set_descr (struct wahc*,TYPE_3__*,int ) ;
 int atomic_set (int *,int ) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int dev_dbg (struct device*,char*,int,int,int ,scalar_t__,int ) ;
 int dev_err (struct device*,char*,int) ;
 int le16_to_cpu (int ) ;
 struct usb_wireless_ep_comp_descriptor* rpipe_epc_find (struct device*,struct usb_host_endpoint*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usb_pipeendpoint (int ) ;
 int wusb_port_no_to_idx (int ) ;

__attribute__((used)) static int rpipe_aim(struct wa_rpipe *rpipe, struct wahc *wa,
       struct usb_host_endpoint *ep, struct urb *urb, gfp_t gfp)
{
 int result = -ENOMSG;
 struct device *dev = &wa->usb_iface->dev;
 struct usb_device *usb_dev = urb->dev;
 struct usb_wireless_ep_comp_descriptor *epcd;
 u8 unauth;

 epcd = rpipe_epc_find(dev, ep);
 if (epcd == ((void*)0)) {
  dev_err(dev, "ep 0x%02x: can't find companion descriptor\n",
   ep->desc.bEndpointAddress);
  goto error;
 }
 unauth = usb_dev->wusb && !usb_dev->authenticated ? 0x80 : 0;
 __rpipe_reset(wa, le16_to_cpu(rpipe->descr.wRPipeIndex));
 atomic_set(&rpipe->segs_available, le16_to_cpu(rpipe->descr.wRequests));


 rpipe->descr.wBlocks = cpu_to_le16(16);

 rpipe->descr.wMaxPacketSize = cpu_to_le16(ep->desc.wMaxPacketSize);
 rpipe->descr.bHSHubAddress = 0;
 rpipe->descr.bHSHubPort = wusb_port_no_to_idx(urb->dev->portnum);

 rpipe->descr.bSpeed = usb_pipeendpoint(urb->pipe) == 0 ?
  UWB_PHY_RATE_53 : UWB_PHY_RATE_200;

 dev_dbg(dev, "addr %u (0x%02x) rpipe #%u ep# %u speed %d\n",
  urb->dev->devnum, urb->dev->devnum | unauth,
  le16_to_cpu(rpipe->descr.wRPipeIndex),
  usb_pipeendpoint(urb->pipe), rpipe->descr.bSpeed);


 if (unlikely(urb->dev->devnum == 0x80))
  rpipe->descr.bDeviceAddress = 0;
 else
  rpipe->descr.bDeviceAddress = urb->dev->devnum | unauth;
 rpipe->descr.bEndpointAddress = ep->desc.bEndpointAddress;

 rpipe->descr.bDataSequence = 0;

 rpipe->descr.dwCurrentWindow = cpu_to_le32(1);

 rpipe->descr.bMaxDataSequence = epcd->bMaxSequence - 1;
 rpipe->descr.bInterval = ep->desc.bInterval;

 rpipe->descr.bOverTheAirInterval = 0;

 rpipe->descr.bmAttribute = ep->desc.bmAttributes & 0x03;


 rpipe->descr.bmRetryOptions = 15;

 rpipe->descr.wNumTransactionErrors = 0;
 result = __rpipe_set_descr(wa, &rpipe->descr,
       le16_to_cpu(rpipe->descr.wRPipeIndex));
 if (result < 0) {
  dev_err(dev, "Cannot aim rpipe: %d\n", result);
  goto error;
 }
 result = 0;
error:
 return result;
}
