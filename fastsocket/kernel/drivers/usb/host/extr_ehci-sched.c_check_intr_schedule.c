
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ehci_qh {unsigned int gap_uf; scalar_t__ c_usecs; int period; int dev; int tt_usecs; scalar_t__ usecs; } ;
struct ehci_hcd {int dummy; } ;
typedef int __hc32 ;


 int ENOSPC ;
 int check_period (struct ehci_hcd*,unsigned int,unsigned int,int ,scalar_t__) ;
 int cpu_to_hc32 (struct ehci_hcd*,int) ;
 scalar_t__ tt_available (struct ehci_hcd*,int ,int ,unsigned int,unsigned int,int ) ;
 scalar_t__ tt_no_collision (struct ehci_hcd*,int ,int ,unsigned int,int) ;

__attribute__((used)) static int check_intr_schedule (
 struct ehci_hcd *ehci,
 unsigned frame,
 unsigned uframe,
 const struct ehci_qh *qh,
 __hc32 *c_maskp
)
{
 int retval = -ENOSPC;
 u8 mask = 0;

 if (qh->c_usecs && uframe >= 6)
  goto done;

 if (!check_period (ehci, frame, uframe, qh->period, qh->usecs))
  goto done;
 if (!qh->c_usecs) {
  retval = 0;
  *c_maskp = 0;
  goto done;
 }
 mask = 0x03 << (uframe + qh->gap_uf);
 *c_maskp = cpu_to_hc32(ehci, mask << 8);

 mask |= 1 << uframe;
 if (tt_no_collision (ehci, qh->period, qh->dev, frame, mask)) {
  if (!check_period (ehci, frame, uframe + qh->gap_uf + 1,
     qh->period, qh->c_usecs))
   goto done;
  if (!check_period (ehci, frame, uframe + qh->gap_uf,
     qh->period, qh->c_usecs))
   goto done;
  retval = 0;
 }

done:
 return retval;
}
