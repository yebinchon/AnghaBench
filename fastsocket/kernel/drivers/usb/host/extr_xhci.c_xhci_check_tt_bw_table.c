
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {int real_port; struct xhci_tt_bw_info* tt_info; } ;
struct xhci_tt_bw_info {scalar_t__ active_eps; } ;
struct xhci_interval_bw_table {scalar_t__ bw_used; } ;
struct xhci_hcd {TYPE_1__* rh_bw; } ;
struct TYPE_2__ {struct xhci_interval_bw_table bw_table; } ;


 int ENOMEM ;
 scalar_t__ HS_BW_LIMIT ;
 scalar_t__ TT_HS_OVERHEAD ;

__attribute__((used)) static int xhci_check_tt_bw_table(struct xhci_hcd *xhci,
  struct xhci_virt_device *virt_dev,
  int old_active_eps)
{
 struct xhci_interval_bw_table *bw_table;
 struct xhci_tt_bw_info *tt_info;


 bw_table = &xhci->rh_bw[virt_dev->real_port - 1].bw_table;
 tt_info = virt_dev->tt_info;




 if (old_active_eps)
  return 0;
 if (old_active_eps == 0 && tt_info->active_eps != 0) {
  if (bw_table->bw_used + TT_HS_OVERHEAD > HS_BW_LIMIT)
   return -ENOMEM;
  return 0;
 }






 return 0;
}
