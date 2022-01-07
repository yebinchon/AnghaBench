
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_stream_info {int ctx_array_dma; int num_stream_ctxs; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int deq; int ep_info; } ;


 int EP_HAS_LSA ;
 int EP_MAXPSTREAMS (int) ;
 int EP_MAXPSTREAMS_MASK ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int fls (int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,int) ;

void xhci_setup_streams_ep_input_ctx(struct xhci_hcd *xhci,
  struct xhci_ep_ctx *ep_ctx,
  struct xhci_stream_info *stream_info)
{
 u32 max_primary_streams;




 max_primary_streams = fls(stream_info->num_stream_ctxs) - 2;
 xhci_dbg(xhci, "Setting number of stream ctx array entries to %u\n",
   1 << (max_primary_streams + 1));
 ep_ctx->ep_info &= cpu_to_le32(~EP_MAXPSTREAMS_MASK);
 ep_ctx->ep_info |= cpu_to_le32(EP_MAXPSTREAMS(max_primary_streams)
           | EP_HAS_LSA);
 ep_ctx->deq = cpu_to_le64(stream_info->ctx_array_dma);
}
