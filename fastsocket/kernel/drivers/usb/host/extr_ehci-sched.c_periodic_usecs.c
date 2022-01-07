
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


union ehci_shadow {TYPE_6__* sitd; TYPE_4__* itd; TYPE_2__* fstn; TYPE_1__* qh; scalar_t__ ptr; } ;
struct ehci_qh_hw {int hw_info2; int hw_next; } ;
struct ehci_hcd {union ehci_shadow* pshadow; int * periodic; } ;
typedef int __hc32 ;
struct TYPE_12__ {int hw_uframe; int hw_fullspeed_ep; union ehci_shadow sitd_next; int hw_next; TYPE_5__* stream; } ;
struct TYPE_11__ {unsigned int usecs; unsigned int c_usecs; } ;
struct TYPE_10__ {union ehci_shadow itd_next; int hw_next; TYPE_3__* stream; int * hw_transaction; } ;
struct TYPE_9__ {unsigned int usecs; } ;
struct TYPE_8__ {union ehci_shadow fstn_next; int hw_next; int hw_prev; } ;
struct TYPE_7__ {unsigned int usecs; unsigned int c_usecs; union ehci_shadow qh_next; struct ehci_qh_hw* hw; } ;


 int EHCI_LIST_END (struct ehci_hcd*) ;
 unsigned int HS_USECS_ISO (int) ;
 int Q_NEXT_TYPE (struct ehci_hcd*,int ) ;



 int cpu_to_hc32 (struct ehci_hcd*,int) ;
 int ehci_dbg (struct ehci_hcd*,char*) ;
 int ehci_err (struct ehci_hcd*,char*,unsigned int,unsigned int) ;
 int hc32_to_cpu (struct ehci_hcd*,int ) ;

__attribute__((used)) static unsigned short
periodic_usecs (struct ehci_hcd *ehci, unsigned frame, unsigned uframe)
{
 __hc32 *hw_p = &ehci->periodic [frame];
 union ehci_shadow *q = &ehci->pshadow [frame];
 unsigned usecs = 0;
 struct ehci_qh_hw *hw;

 while (q->ptr) {
  switch (hc32_to_cpu(ehci, Q_NEXT_TYPE(ehci, *hw_p))) {
  case 129:
   hw = q->qh->hw;

   if (hw->hw_info2 & cpu_to_hc32(ehci, 1 << uframe))
    usecs += q->qh->usecs;

   if (hw->hw_info2 & cpu_to_hc32(ehci,
     1 << (8 + uframe)))
    usecs += q->qh->c_usecs;
   hw_p = &hw->hw_next;
   q = &q->qh->qh_next;
   break;

  default:



   if (q->fstn->hw_prev != EHCI_LIST_END(ehci)) {
    ehci_dbg (ehci, "ignoring FSTN cost ...\n");
   }
   hw_p = &q->fstn->hw_next;
   q = &q->fstn->fstn_next;
   break;
  case 130:
   if (q->itd->hw_transaction[uframe])
    usecs += q->itd->stream->usecs;
   hw_p = &q->itd->hw_next;
   q = &q->itd->itd_next;
   break;
  case 128:

   if (q->sitd->hw_uframe & cpu_to_hc32(ehci,
     1 << uframe)) {
    if (q->sitd->hw_fullspeed_ep &
      cpu_to_hc32(ehci, 1<<31))
     usecs += q->sitd->stream->usecs;
    else
     usecs += HS_USECS_ISO (188);
   }


   if (q->sitd->hw_uframe &
     cpu_to_hc32(ehci, 1 << (8 + uframe))) {

    usecs += q->sitd->stream->c_usecs;
   }

   hw_p = &q->sitd->hw_next;
   q = &q->sitd->sitd_next;
   break;
  }
 }





 return usecs;
}
