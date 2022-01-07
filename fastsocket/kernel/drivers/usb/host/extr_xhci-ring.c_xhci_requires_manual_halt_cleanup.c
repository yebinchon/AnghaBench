
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int ep_info; } ;


 unsigned int COMP_BABBLE ;
 unsigned int COMP_SPLIT_ERR ;
 unsigned int COMP_TX_ERR ;
 int EP_STATE_HALTED ;
 int EP_STATE_MASK ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static int xhci_requires_manual_halt_cleanup(struct xhci_hcd *xhci,
  struct xhci_ep_ctx *ep_ctx,
  unsigned int trb_comp_code)
{

 if (trb_comp_code == COMP_TX_ERR ||
   trb_comp_code == COMP_BABBLE ||
   trb_comp_code == COMP_SPLIT_ERR)






  if ((ep_ctx->ep_info & cpu_to_le32(EP_STATE_MASK)) ==
      cpu_to_le32(EP_STATE_HALTED))
   return 1;

 return 0;
}
