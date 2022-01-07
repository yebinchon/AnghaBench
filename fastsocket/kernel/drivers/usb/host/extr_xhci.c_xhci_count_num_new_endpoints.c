
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_input_control_ctx {int add_flags; int drop_flags; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {int dummy; } ;


 int hweight32 (int) ;
 struct xhci_input_control_ctx* xhci_get_input_control_ctx (struct xhci_hcd*,struct xhci_container_ctx*) ;

__attribute__((used)) static u32 xhci_count_num_new_endpoints(struct xhci_hcd *xhci,
  struct xhci_container_ctx *in_ctx)
{
 struct xhci_input_control_ctx *ctrl_ctx;
 u32 valid_add_flags;
 u32 valid_drop_flags;

 ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);




 valid_add_flags = ctrl_ctx->add_flags >> 2;
 valid_drop_flags = ctrl_ctx->drop_flags >> 2;





 return hweight32(valid_add_flags) -
  hweight32(valid_add_flags & valid_drop_flags);
}
