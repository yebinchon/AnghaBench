
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_slot_ctx {int dev_state; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {int dummy; } ;


 int GET_SLOT_STATE (int ) ;




 int le32_to_cpu (int ) ;
 struct xhci_slot_ctx* xhci_get_slot_ctx (struct xhci_hcd*,struct xhci_container_ctx*) ;

char *xhci_get_slot_state(struct xhci_hcd *xhci,
  struct xhci_container_ctx *ctx)
{
 struct xhci_slot_ctx *slot_ctx = xhci_get_slot_ctx(xhci, ctx);

 switch (GET_SLOT_STATE(le32_to_cpu(slot_ctx->dev_state))) {
 case 128:
  return "enabled/disabled";
 case 129:
  return "default";
 case 131:
  return "addressed";
 case 130:
  return "configured";
 default:
  return "reserved";
 }
}
