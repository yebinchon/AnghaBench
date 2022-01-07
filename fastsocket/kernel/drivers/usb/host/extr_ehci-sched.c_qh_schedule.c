
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qh_hw {int hw_info2; int hw_next; } ;
struct ehci_qh {unsigned int start; unsigned int period; struct ehci_qh_hw* hw; } ;
struct ehci_hcd {unsigned int random_frame; } ;
typedef int __hc32 ;


 int EHCI_LIST_END (struct ehci_hcd*) ;
 int ENOSPC ;
 int QH_CMASK ;
 int QH_SMASK ;
 int check_intr_schedule (struct ehci_hcd*,unsigned int,unsigned int,struct ehci_qh*,int *) ;
 int cpu_to_hc32 (struct ehci_hcd*,int) ;
 int ehci_dbg (struct ehci_hcd*,char*,struct ehci_qh*) ;
 unsigned int ffs (int) ;
 int hc32_to_cpup (struct ehci_hcd*,int *) ;
 int qh_link_periodic (struct ehci_hcd*,struct ehci_qh*) ;
 int qh_refresh (struct ehci_hcd*,struct ehci_qh*) ;

__attribute__((used)) static int qh_schedule(struct ehci_hcd *ehci, struct ehci_qh *qh)
{
 int status;
 unsigned uframe;
 __hc32 c_mask;
 unsigned frame;
 struct ehci_qh_hw *hw = qh->hw;

 qh_refresh(ehci, qh);
 hw->hw_next = EHCI_LIST_END(ehci);
 frame = qh->start;


 if (frame < qh->period) {
  uframe = ffs(hc32_to_cpup(ehci, &hw->hw_info2) & QH_SMASK);
  status = check_intr_schedule (ehci, frame, --uframe,
    qh, &c_mask);
 } else {
  uframe = 0;
  c_mask = 0;
  status = -ENOSPC;
 }




 if (status) {

  if (qh->period) {
   int i;

   for (i = qh->period; status && i > 0; --i) {
    frame = ++ehci->random_frame % qh->period;
    for (uframe = 0; uframe < 8; uframe++) {
     status = check_intr_schedule (ehci,
       frame, uframe, qh,
       &c_mask);
     if (status == 0)
      break;
    }
   }


  } else {
   frame = 0;
   status = check_intr_schedule (ehci, 0, 0, qh, &c_mask);
  }
  if (status)
   goto done;
  qh->start = frame;


  hw->hw_info2 &= cpu_to_hc32(ehci, ~(QH_CMASK | QH_SMASK));
  hw->hw_info2 |= qh->period
   ? cpu_to_hc32(ehci, 1 << uframe)
   : cpu_to_hc32(ehci, QH_SMASK);
  hw->hw_info2 |= c_mask;
 } else
  ehci_dbg (ehci, "reused qh %p schedule\n", qh);


 status = qh_link_periodic (ehci, qh);
done:
 return status;
}
