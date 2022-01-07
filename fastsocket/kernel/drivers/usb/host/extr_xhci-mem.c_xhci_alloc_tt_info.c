
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_virt_device {int real_port; TYPE_3__* udev; } ;
struct xhci_interval_bw_table {TYPE_2__* interval_bw; } ;
struct xhci_tt_bw_info {int ttport; struct xhci_interval_bw_table bw_table; int slot_id; int tt_list; } ;
struct xhci_hcd {TYPE_1__* rh_bw; } ;
struct usb_tt {scalar_t__ multi; } ;
struct usb_device {unsigned int maxchild; } ;
typedef int gfp_t ;
struct TYPE_6__ {int slot_id; } ;
struct TYPE_5__ {int endpoints; } ;
struct TYPE_4__ {int tts; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int XHCI_MAX_INTERVAL ;
 struct xhci_tt_bw_info* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int xhci_free_tt_info (struct xhci_hcd*,struct xhci_virt_device*,int ) ;

int xhci_alloc_tt_info(struct xhci_hcd *xhci,
  struct xhci_virt_device *virt_dev,
  struct usb_device *hdev,
  struct usb_tt *tt, gfp_t mem_flags)
{
 struct xhci_tt_bw_info *tt_info;
 unsigned int num_ports;
 int i, j;

 if (!tt->multi)
  num_ports = 1;
 else
  num_ports = hdev->maxchild;

 for (i = 0; i < num_ports; i++, tt_info++) {
  struct xhci_interval_bw_table *bw_table;

  tt_info = kzalloc(sizeof(*tt_info), mem_flags);
  if (!tt_info)
   goto free_tts;
  INIT_LIST_HEAD(&tt_info->tt_list);
  list_add(&tt_info->tt_list,
    &xhci->rh_bw[virt_dev->real_port - 1].tts);
  tt_info->slot_id = virt_dev->udev->slot_id;
  if (tt->multi)
   tt_info->ttport = i+1;
  bw_table = &tt_info->bw_table;
  for (j = 0; j < XHCI_MAX_INTERVAL; j++)
   INIT_LIST_HEAD(&bw_table->interval_bw[j].endpoints);
 }
 return 0;

free_tts:
 xhci_free_tt_info(xhci, virt_dev, virt_dev->udev->slot_id);
 return -ENOMEM;
}
