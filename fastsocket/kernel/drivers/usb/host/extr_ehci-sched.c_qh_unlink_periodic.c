
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * ptr; } ;
struct ehci_qh {unsigned int period; unsigned int start; int usecs; int c_usecs; TYPE_4__ qh_next; int qh_state; TYPE_3__* hw; TYPE_2__* dev; } ;
struct ehci_hcd {unsigned int periodic_size; } ;
struct TYPE_6__ {int bandwidth_allocated; } ;
struct TYPE_10__ {TYPE_1__ self; } ;
struct TYPE_8__ {int hw_info2; } ;
struct TYPE_7__ {int dev; } ;


 int QH_CMASK ;
 int QH_SMASK ;
 int QH_STATE_UNLINK ;
 int dev_dbg (int *,char*,int,int,struct ehci_qh*,unsigned int,int,int) ;
 int disable_periodic (struct ehci_hcd*) ;
 TYPE_5__* ehci_to_hcd (struct ehci_hcd*) ;
 int hc32_to_cpup (struct ehci_hcd*,int *) ;
 int periodic_unlink (struct ehci_hcd*,unsigned int,struct ehci_qh*) ;
 int qh_put (struct ehci_qh*) ;

__attribute__((used)) static int qh_unlink_periodic(struct ehci_hcd *ehci, struct ehci_qh *qh)
{
 unsigned i;
 unsigned period;
 if ((period = qh->period) == 0)
  period = 1;

 for (i = qh->start; i < ehci->periodic_size; i += period)
  periodic_unlink (ehci, i, qh);


 ehci_to_hcd(ehci)->self.bandwidth_allocated -= qh->period
  ? ((qh->usecs + qh->c_usecs) / qh->period)
  : (qh->usecs * 8);

 dev_dbg (&qh->dev->dev,
  "unlink qh%d-%04x/%p start %d [%d/%d us]\n",
  qh->period,
  hc32_to_cpup(ehci, &qh->hw->hw_info2) & (QH_CMASK | QH_SMASK),
  qh, qh->start, qh->usecs, qh->c_usecs);


 qh->qh_state = QH_STATE_UNLINK;
 qh->qh_next.ptr = ((void*)0);
 qh_put (qh);


 return disable_periodic(ehci);
}
