
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xhci_input_control_ctx {int * rsvd2; int add_flags; int drop_flags; } ;
struct xhci_hcd {int hcc_params; } ;
struct xhci_container_ctx {scalar_t__ type; scalar_t__ dma; } ;
typedef scalar_t__ dma_addr_t ;


 int HCC_64BYTE_CONTEXT (int ) ;
 scalar_t__ XHCI_CTX_TYPE_INPUT ;
 int dbg_rsvd64 (struct xhci_hcd*,int *,scalar_t__) ;
 int xhci_dbg (struct xhci_hcd*,char*,int *,unsigned long long,int ,...) ;
 int xhci_dbg_ep_ctx (struct xhci_hcd*,struct xhci_container_ctx*,unsigned int) ;
 int xhci_dbg_slot_ctx (struct xhci_hcd*,struct xhci_container_ctx*) ;
 struct xhci_input_control_ctx* xhci_get_input_control_ctx (struct xhci_hcd*,struct xhci_container_ctx*) ;

void xhci_dbg_ctx(struct xhci_hcd *xhci,
    struct xhci_container_ctx *ctx,
    unsigned int last_ep)
{
 int i;

 int field_size = 32 / 8;
 dma_addr_t dma = ctx->dma;
 int csz = HCC_64BYTE_CONTEXT(xhci->hcc_params);

 if (ctx->type == XHCI_CTX_TYPE_INPUT) {
  struct xhci_input_control_ctx *ctrl_ctx =
   xhci_get_input_control_ctx(xhci, ctx);
  xhci_dbg(xhci, "@%p (virt) @%08llx (dma) %#08x - drop flags\n",
    &ctrl_ctx->drop_flags, (unsigned long long)dma,
    ctrl_ctx->drop_flags);
  dma += field_size;
  xhci_dbg(xhci, "@%p (virt) @%08llx (dma) %#08x - add flags\n",
    &ctrl_ctx->add_flags, (unsigned long long)dma,
    ctrl_ctx->add_flags);
  dma += field_size;
  for (i = 0; i < 6; ++i) {
   xhci_dbg(xhci, "@%p (virt) @%08llx (dma) %#08x - rsvd2[%d]\n",
     &ctrl_ctx->rsvd2[i], (unsigned long long)dma,
     ctrl_ctx->rsvd2[i], i);
   dma += field_size;
  }

  if (csz)
   dbg_rsvd64(xhci, (u64 *)ctrl_ctx, dma);
 }

 xhci_dbg_slot_ctx(xhci, ctx);
 xhci_dbg_ep_ctx(xhci, ctx, last_ep);
}
