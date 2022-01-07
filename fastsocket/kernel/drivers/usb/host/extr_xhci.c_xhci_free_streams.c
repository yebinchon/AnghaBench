
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xhci_virt_device {TYPE_1__* eps; int out_ctx; } ;
struct xhci_hcd {int lock; struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct xhci_command {int in_ctx; } ;
struct usb_host_endpoint {int desc; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {size_t slot_id; } ;
typedef int gfp_t ;
struct TYPE_4__ {struct xhci_command* free_streams_command; } ;
struct TYPE_3__ {int ep_state; TYPE_2__* stream_info; } ;


 int EINVAL ;
 int EP_GETTING_NO_STREAMS ;
 int EP_HAS_STREAMS ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ xhci_calculate_no_streams_bitmask (struct xhci_hcd*,struct usb_device*,struct usb_host_endpoint**,unsigned int) ;
 int xhci_configure_endpoint (struct xhci_hcd*,struct usb_device*,struct xhci_command*,int,int) ;
 int xhci_endpoint_copy (struct xhci_hcd*,int ,int ,unsigned int) ;
 int xhci_free_stream_info (struct xhci_hcd*,TYPE_2__*) ;
 unsigned int xhci_get_endpoint_index (int *) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,unsigned int) ;
 int xhci_setup_input_ctx_for_config_ep (struct xhci_hcd*,int ,int ,scalar_t__,scalar_t__) ;
 int xhci_setup_no_streams_ep_input_ctx (struct xhci_hcd*,struct xhci_ep_ctx*,TYPE_1__*) ;

int xhci_free_streams(struct usb_hcd *hcd, struct usb_device *udev,
  struct usb_host_endpoint **eps, unsigned int num_eps,
  gfp_t mem_flags)
{
 int i, ret;
 struct xhci_hcd *xhci;
 struct xhci_virt_device *vdev;
 struct xhci_command *command;
 unsigned int ep_index;
 unsigned long flags;
 u32 changed_ep_bitmask;

 xhci = hcd_to_xhci(hcd);
 vdev = xhci->devs[udev->slot_id];


 spin_lock_irqsave(&xhci->lock, flags);
 changed_ep_bitmask = xhci_calculate_no_streams_bitmask(xhci,
   udev, eps, num_eps);
 if (changed_ep_bitmask == 0) {
  spin_unlock_irqrestore(&xhci->lock, flags);
  return -EINVAL;
 }





 ep_index = xhci_get_endpoint_index(&eps[0]->desc);
 command = vdev->eps[ep_index].stream_info->free_streams_command;
 for (i = 0; i < num_eps; i++) {
  struct xhci_ep_ctx *ep_ctx;

  ep_index = xhci_get_endpoint_index(&eps[i]->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, command->in_ctx, ep_index);
  xhci->devs[udev->slot_id]->eps[ep_index].ep_state |=
   EP_GETTING_NO_STREAMS;

  xhci_endpoint_copy(xhci, command->in_ctx,
    vdev->out_ctx, ep_index);
  xhci_setup_no_streams_ep_input_ctx(xhci, ep_ctx,
    &vdev->eps[ep_index]);
 }
 xhci_setup_input_ctx_for_config_ep(xhci, command->in_ctx,
   vdev->out_ctx, changed_ep_bitmask, changed_ep_bitmask);
 spin_unlock_irqrestore(&xhci->lock, flags);




 ret = xhci_configure_endpoint(xhci, udev, command,
   0, 1);




 if (ret < 0)
  return ret;

 spin_lock_irqsave(&xhci->lock, flags);
 for (i = 0; i < num_eps; i++) {
  ep_index = xhci_get_endpoint_index(&eps[i]->desc);
  xhci_free_stream_info(xhci, vdev->eps[ep_index].stream_info);
  vdev->eps[ep_index].stream_info = ((void*)0);



  vdev->eps[ep_index].ep_state &= ~EP_GETTING_NO_STREAMS;
  vdev->eps[ep_index].ep_state &= ~EP_HAS_STREAMS;
 }
 spin_unlock_irqrestore(&xhci->lock, flags);

 return 0;
}
