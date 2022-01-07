
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ehci_shadow {TYPE_1__* qh; scalar_t__ ptr; } ;
struct oxu_hcd {union ehci_shadow* pshadow; int * periodic; } ;
typedef int __le32 ;
struct TYPE_2__ {int hw_info2; unsigned int usecs; unsigned int c_usecs; union ehci_shadow qh_next; int hw_next; } ;


 int Q_NEXT_TYPE (int ) ;

 int cpu_to_le32 (int) ;
 int oxu_err (struct oxu_hcd*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned short periodic_usecs(struct oxu_hcd *oxu,
     unsigned frame, unsigned uframe)
{
 __le32 *hw_p = &oxu->periodic[frame];
 union ehci_shadow *q = &oxu->pshadow[frame];
 unsigned usecs = 0;

 while (q->ptr) {
  switch (Q_NEXT_TYPE(*hw_p)) {
  case 128:
  default:

   if (q->qh->hw_info2 & cpu_to_le32(1 << uframe))
    usecs += q->qh->usecs;

   if (q->qh->hw_info2 & cpu_to_le32(1 << (8 + uframe)))
    usecs += q->qh->c_usecs;
   hw_p = &q->qh->hw_next;
   q = &q->qh->qh_next;
   break;
  }
 }





 return usecs;
}
