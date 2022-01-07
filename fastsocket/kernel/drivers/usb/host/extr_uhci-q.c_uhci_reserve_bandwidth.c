
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct uhci_qh {int load; int phase; int period; int type; int bandwidth_reserved; TYPE_4__* hep; TYPE_2__* udev; } ;
struct uhci_hcd {int* load; int total_load; } ;
struct TYPE_6__ {int bandwidth_allocated; int bandwidth_isoc_reqs; int bandwidth_int_reqs; } ;
struct TYPE_10__ {TYPE_1__ self; } ;
struct TYPE_8__ {int bEndpointAddress; } ;
struct TYPE_9__ {TYPE_3__ desc; } ;
struct TYPE_7__ {int devnum; } ;


 int MAX_PHASE ;


 int dev_dbg (int ,char*,char*,int ,int ,char*,int,int,int) ;
 int uhci_dev (struct uhci_hcd*) ;
 TYPE_5__* uhci_to_hcd (struct uhci_hcd*) ;

__attribute__((used)) static void uhci_reserve_bandwidth(struct uhci_hcd *uhci, struct uhci_qh *qh)
{
 int i;
 int load = qh->load;
 char *p = "??";

 for (i = qh->phase; i < MAX_PHASE; i += qh->period) {
  uhci->load[i] += load;
  uhci->total_load += load;
 }
 uhci_to_hcd(uhci)->self.bandwidth_allocated =
   uhci->total_load / MAX_PHASE;
 switch (qh->type) {
 case 129:
  ++uhci_to_hcd(uhci)->self.bandwidth_int_reqs;
  p = "INT";
  break;
 case 128:
  ++uhci_to_hcd(uhci)->self.bandwidth_isoc_reqs;
  p = "ISO";
  break;
 }
 qh->bandwidth_reserved = 1;
 dev_dbg(uhci_dev(uhci),
   "%s dev %d ep%02x-%s, period %d, phase %d, %d us\n",
   "reserve", qh->udev->devnum,
   qh->hep->desc.bEndpointAddress, p,
   qh->period, qh->phase, load);
}
