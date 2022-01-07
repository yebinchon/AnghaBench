
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union ehci_shadow {TYPE_4__* sitd; TYPE_2__* qh; TYPE_1__* itd; scalar_t__ ptr; } ;
typedef int u32 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct ehci_qh_hw {int hw_next; int hw_info2; } ;
struct ehci_hcd {unsigned int periodic_size; int * periodic; union ehci_shadow* pshadow; } ;
typedef int __hc32 ;
struct TYPE_8__ {union ehci_shadow sitd_next; int hw_next; int hw_uframe; TYPE_3__* urb; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {union ehci_shadow qh_next; int dev; struct ehci_qh_hw* hw; } ;
struct TYPE_5__ {union ehci_shadow itd_next; int hw_next; } ;


 int Q_NEXT_TYPE (struct ehci_hcd*,int ) ;



 int ehci_dbg (struct ehci_hcd*,char*,unsigned int,int ) ;
 int hc32_to_cpu (struct ehci_hcd*,int ) ;
 int same_tt (struct usb_device*,int ) ;

__attribute__((used)) static int tt_no_collision (
 struct ehci_hcd *ehci,
 unsigned period,
 struct usb_device *dev,
 unsigned frame,
 u32 uf_mask
)
{
 if (period == 0)
  return 0;





 for (; frame < ehci->periodic_size; frame += period) {
  union ehci_shadow here;
  __hc32 type;
  struct ehci_qh_hw *hw;

  here = ehci->pshadow [frame];
  type = Q_NEXT_TYPE(ehci, ehci->periodic [frame]);
  while (here.ptr) {
   switch (hc32_to_cpu(ehci, type)) {
   case 130:
    type = Q_NEXT_TYPE(ehci, here.itd->hw_next);
    here = here.itd->itd_next;
    continue;
   case 129:
    hw = here.qh->hw;
    if (same_tt (dev, here.qh->dev)) {
     u32 mask;

     mask = hc32_to_cpu(ehci,
       hw->hw_info2);

     mask |= mask >> 8;
     if (mask & uf_mask)
      break;
    }
    type = Q_NEXT_TYPE(ehci, hw->hw_next);
    here = here.qh->qh_next;
    continue;
   case 128:
    if (same_tt (dev, here.sitd->urb->dev)) {
     u16 mask;

     mask = hc32_to_cpu(ehci, here.sitd
        ->hw_uframe);

     mask |= mask >> 8;
     if (mask & uf_mask)
      break;
    }
    type = Q_NEXT_TYPE(ehci, here.sitd->hw_next);
    here = here.sitd->sitd_next;
    continue;

   default:
    ehci_dbg (ehci,
     "periodic frame %d bogus type %d\n",
     frame, type);
   }


   return 0;
  }
 }


 return 1;
}
