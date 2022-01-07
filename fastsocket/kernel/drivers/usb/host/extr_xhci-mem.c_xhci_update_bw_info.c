
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {TYPE_1__* eps; } ;
struct xhci_input_control_ctx {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int tx_info; int ep_info2; int ep_info; } ;
struct xhci_container_ctx {int dummy; } ;
struct xhci_bw_info {unsigned int type; int max_esit_payload; int max_packet_size; scalar_t__ num_packets; scalar_t__ mult; int ep_interval; } ;
struct TYPE_2__ {struct xhci_bw_info bw_info; } ;


 int CTX_TO_EP_INTERVAL (int ) ;
 scalar_t__ CTX_TO_EP_MULT (int ) ;
 unsigned int CTX_TO_EP_TYPE (int ) ;
 scalar_t__ CTX_TO_MAX_BURST (int ) ;
 int CTX_TO_MAX_ESIT_PAYLOAD (int ) ;
 scalar_t__ EP_IS_ADDED (struct xhci_input_control_ctx*,int) ;
 scalar_t__ EP_IS_DROPPED (struct xhci_input_control_ctx*,int) ;
 unsigned int INT_IN_EP ;
 unsigned int INT_OUT_EP ;
 unsigned int ISOC_IN_EP ;
 unsigned int ISOC_OUT_EP ;
 int MAX_PACKET_DECODED (int ) ;
 int le32_to_cpu (int ) ;
 int xhci_clear_endpoint_bw_info (struct xhci_bw_info*) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,struct xhci_container_ctx*,int) ;

void xhci_update_bw_info(struct xhci_hcd *xhci,
  struct xhci_container_ctx *in_ctx,
  struct xhci_input_control_ctx *ctrl_ctx,
  struct xhci_virt_device *virt_dev)
{
 struct xhci_bw_info *bw_info;
 struct xhci_ep_ctx *ep_ctx;
 unsigned int ep_type;
 int i;

 for (i = 1; i < 31; ++i) {
  bw_info = &virt_dev->eps[i].bw_info;






  if (!EP_IS_ADDED(ctrl_ctx, i) && EP_IS_DROPPED(ctrl_ctx, i)) {

   xhci_clear_endpoint_bw_info(bw_info);
   continue;
  }

  if (EP_IS_ADDED(ctrl_ctx, i)) {
   ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, i);
   ep_type = CTX_TO_EP_TYPE(le32_to_cpu(ep_ctx->ep_info2));


   if (ep_type != ISOC_OUT_EP && ep_type != INT_OUT_EP &&
     ep_type != ISOC_IN_EP &&
     ep_type != INT_IN_EP)
    continue;


   bw_info->ep_interval = CTX_TO_EP_INTERVAL(
     le32_to_cpu(ep_ctx->ep_info));




   bw_info->mult = CTX_TO_EP_MULT(
     le32_to_cpu(ep_ctx->ep_info)) + 1;
   bw_info->num_packets = CTX_TO_MAX_BURST(
     le32_to_cpu(ep_ctx->ep_info2)) + 1;
   bw_info->max_packet_size = MAX_PACKET_DECODED(
     le32_to_cpu(ep_ctx->ep_info2));
   bw_info->type = ep_type;
   bw_info->max_esit_payload = CTX_TO_MAX_ESIT_PAYLOAD(
     le32_to_cpu(ep_ctx->tx_info));
  }
 }
}
