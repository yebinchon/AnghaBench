
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xhci_virt_device {TYPE_2__* tt_info; TYPE_1__* eps; int udev; int bw_table; int in_ctx; } ;
struct xhci_input_control_ctx {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {int dummy; } ;
struct xhci_bw_info {int dummy; } ;
typedef int ep_bw_info ;
struct TYPE_6__ {int active_eps; } ;
struct TYPE_5__ {struct xhci_bw_info bw_info; } ;


 int ENOMEM ;
 scalar_t__ EP_IS_ADDED (struct xhci_input_control_ctx*,int) ;
 scalar_t__ EP_IS_DROPPED (struct xhci_input_control_ctx*,int) ;
 int memcpy (struct xhci_bw_info*,struct xhci_bw_info*,int) ;
 int xhci_add_ep_to_interval_table (struct xhci_hcd*,struct xhci_bw_info*,int ,int ,TYPE_1__*,TYPE_2__*) ;
 int xhci_check_bw_table (struct xhci_hcd*,struct xhci_virt_device*,int) ;
 int xhci_drop_ep_from_interval_table (struct xhci_hcd*,struct xhci_bw_info*,int ,int ,TYPE_1__*,TYPE_2__*) ;
 struct xhci_input_control_ctx* xhci_get_input_control_ctx (struct xhci_hcd*,struct xhci_container_ctx*) ;
 int xhci_update_bw_info (struct xhci_hcd*,int ,struct xhci_input_control_ctx*,struct xhci_virt_device*) ;
 int xhci_update_tt_active_eps (struct xhci_hcd*,struct xhci_virt_device*,int) ;

__attribute__((used)) static int xhci_reserve_bandwidth(struct xhci_hcd *xhci,
  struct xhci_virt_device *virt_dev,
  struct xhci_container_ctx *in_ctx)
{
 struct xhci_bw_info ep_bw_info[31];
 int i;
 struct xhci_input_control_ctx *ctrl_ctx;
 int old_active_eps = 0;

 if (virt_dev->tt_info)
  old_active_eps = virt_dev->tt_info->active_eps;

 ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);

 for (i = 0; i < 31; i++) {
  if (!EP_IS_ADDED(ctrl_ctx, i) && !EP_IS_DROPPED(ctrl_ctx, i))
   continue;


  memcpy(&ep_bw_info[i], &virt_dev->eps[i].bw_info,
    sizeof(ep_bw_info[i]));



  if (EP_IS_DROPPED(ctrl_ctx, i))
   xhci_drop_ep_from_interval_table(xhci,
     &virt_dev->eps[i].bw_info,
     virt_dev->bw_table,
     virt_dev->udev,
     &virt_dev->eps[i],
     virt_dev->tt_info);
 }

 xhci_update_bw_info(xhci, virt_dev->in_ctx, ctrl_ctx, virt_dev);
 for (i = 0; i < 31; i++) {

  if (EP_IS_ADDED(ctrl_ctx, i))
   xhci_add_ep_to_interval_table(xhci,
     &virt_dev->eps[i].bw_info,
     virt_dev->bw_table,
     virt_dev->udev,
     &virt_dev->eps[i],
     virt_dev->tt_info);
 }

 if (!xhci_check_bw_table(xhci, virt_dev, old_active_eps)) {



  xhci_update_tt_active_eps(xhci, virt_dev, old_active_eps);
  return 0;
 }


 for (i = 0; i < 31; i++) {
  if (!EP_IS_ADDED(ctrl_ctx, i) && !EP_IS_DROPPED(ctrl_ctx, i))
   continue;




  if (EP_IS_ADDED(ctrl_ctx, i)) {
   xhci_drop_ep_from_interval_table(xhci,
     &virt_dev->eps[i].bw_info,
     virt_dev->bw_table,
     virt_dev->udev,
     &virt_dev->eps[i],
     virt_dev->tt_info);
  }

  memcpy(&virt_dev->eps[i].bw_info, &ep_bw_info[i],
    sizeof(ep_bw_info[i]));

  if (EP_IS_DROPPED(ctrl_ctx, i))
   xhci_add_ep_to_interval_table(xhci,
     &virt_dev->eps[i].bw_info,
     virt_dev->bw_table,
     virt_dev->udev,
     &virt_dev->eps[i],
     virt_dev->tt_info);
 }
 return -ENOMEM;
}
