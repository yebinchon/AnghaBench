
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xhci_virt_device {TYPE_1__* eps; int out_ctx; } ;
struct xhci_hcd {int lock; struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct xhci_command {int in_ctx; } ;
struct usb_host_endpoint {int desc; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {size_t slot_id; } ;
typedef int gfp_t ;
struct TYPE_2__ {int ep_state; int * stream_info; } ;


 int EINVAL ;
 int ENOMEM ;
 int EP_GETTING_STREAMS ;
 int EP_HAS_STREAMS ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct xhci_command* xhci_alloc_command (struct xhci_hcd*,int,int,int ) ;
 int * xhci_alloc_stream_info (struct xhci_hcd*,unsigned int,unsigned int,int ) ;
 int xhci_calculate_streams_and_bitmask (struct xhci_hcd*,struct usb_device*,struct usb_host_endpoint**,unsigned int,unsigned int*,int *) ;
 int xhci_calculate_streams_entries (struct xhci_hcd*,unsigned int*,unsigned int*) ;
 int xhci_configure_endpoint (struct xhci_hcd*,struct usb_device*,struct xhci_command*,int,int) ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 int xhci_endpoint_copy (struct xhci_hcd*,int ,int ,unsigned int) ;
 int xhci_endpoint_zero (struct xhci_hcd*,struct xhci_virt_device*,struct usb_host_endpoint*) ;
 int xhci_free_command (struct xhci_hcd*,struct xhci_command*) ;
 int xhci_free_stream_info (struct xhci_hcd*,int *) ;
 unsigned int xhci_get_endpoint_index (int *) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,unsigned int) ;
 int xhci_setup_input_ctx_for_config_ep (struct xhci_hcd*,int ,int ,int ,int ) ;
 int xhci_setup_streams_ep_input_ctx (struct xhci_hcd*,struct xhci_ep_ctx*,int *) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

int xhci_alloc_streams(struct usb_hcd *hcd, struct usb_device *udev,
  struct usb_host_endpoint **eps, unsigned int num_eps,
  unsigned int num_streams, gfp_t mem_flags)
{
 int i, ret;
 struct xhci_hcd *xhci;
 struct xhci_virt_device *vdev;
 struct xhci_command *config_cmd;
 unsigned int ep_index;
 unsigned int num_stream_ctxs;
 unsigned long flags;
 u32 changed_ep_bitmask = 0;

 if (!eps)
  return -EINVAL;




 num_streams += 1;
 xhci = hcd_to_xhci(hcd);
 xhci_dbg(xhci, "Driver wants %u stream IDs (including stream 0).\n",
   num_streams);

 config_cmd = xhci_alloc_command(xhci, 1, 1, mem_flags);
 if (!config_cmd) {
  xhci_dbg(xhci, "Could not allocate xHCI command structure.\n");
  return -ENOMEM;
 }





 spin_lock_irqsave(&xhci->lock, flags);
 ret = xhci_calculate_streams_and_bitmask(xhci, udev, eps,
   num_eps, &num_streams, &changed_ep_bitmask);
 if (ret < 0) {
  xhci_free_command(xhci, config_cmd);
  spin_unlock_irqrestore(&xhci->lock, flags);
  return ret;
 }
 if (num_streams <= 1) {
  xhci_warn(xhci, "WARN: endpoints can't handle "
    "more than one stream.\n");
  xhci_free_command(xhci, config_cmd);
  spin_unlock_irqrestore(&xhci->lock, flags);
  return -EINVAL;
 }
 vdev = xhci->devs[udev->slot_id];



 for (i = 0; i < num_eps; i++) {
  ep_index = xhci_get_endpoint_index(&eps[i]->desc);
  vdev->eps[ep_index].ep_state |= EP_GETTING_STREAMS;
 }
 spin_unlock_irqrestore(&xhci->lock, flags);





 xhci_calculate_streams_entries(xhci, &num_streams, &num_stream_ctxs);
 xhci_dbg(xhci, "Need %u stream ctx entries for %u stream IDs.\n",
   num_stream_ctxs, num_streams);

 for (i = 0; i < num_eps; i++) {
  ep_index = xhci_get_endpoint_index(&eps[i]->desc);
  vdev->eps[ep_index].stream_info = xhci_alloc_stream_info(xhci,
    num_stream_ctxs,
    num_streams, mem_flags);
  if (!vdev->eps[ep_index].stream_info)
   goto cleanup;



 }


 for (i = 0; i < num_eps; i++) {
  struct xhci_ep_ctx *ep_ctx;

  ep_index = xhci_get_endpoint_index(&eps[i]->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, config_cmd->in_ctx, ep_index);

  xhci_endpoint_copy(xhci, config_cmd->in_ctx,
    vdev->out_ctx, ep_index);
  xhci_setup_streams_ep_input_ctx(xhci, ep_ctx,
    vdev->eps[ep_index].stream_info);
 }



 xhci_setup_input_ctx_for_config_ep(xhci, config_cmd->in_ctx,
   vdev->out_ctx, changed_ep_bitmask, changed_ep_bitmask);


 ret = xhci_configure_endpoint(xhci, udev, config_cmd,
   0, 0);





 if (ret < 0)
  goto cleanup;

 spin_lock_irqsave(&xhci->lock, flags);
 for (i = 0; i < num_eps; i++) {
  ep_index = xhci_get_endpoint_index(&eps[i]->desc);
  vdev->eps[ep_index].ep_state &= ~EP_GETTING_STREAMS;
  xhci_dbg(xhci, "Slot %u ep ctx %u now has streams.\n",
    udev->slot_id, ep_index);
  vdev->eps[ep_index].ep_state |= EP_HAS_STREAMS;
 }
 xhci_free_command(xhci, config_cmd);
 spin_unlock_irqrestore(&xhci->lock, flags);


 return num_streams - 1;

cleanup:

 for (i = 0; i < num_eps; i++) {
  ep_index = xhci_get_endpoint_index(&eps[i]->desc);
  xhci_free_stream_info(xhci, vdev->eps[ep_index].stream_info);
  vdev->eps[ep_index].stream_info = ((void*)0);



  vdev->eps[ep_index].ep_state &= ~EP_GETTING_STREAMS;
  vdev->eps[ep_index].ep_state &= ~EP_HAS_STREAMS;
  xhci_endpoint_zero(xhci, vdev, eps[i]);
 }
 xhci_free_command(xhci, config_cmd);
 return -ENOMEM;
}
