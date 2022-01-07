
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_hcd {int dummy; } ;
struct ehci_qh {scalar_t__ c_usecs; int usecs; int period; } ;
typedef scalar_t__ __le32 ;


 int ENOSPC ;
 int check_period (struct oxu_hcd*,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static int check_intr_schedule(struct oxu_hcd *oxu,
    unsigned frame, unsigned uframe,
    const struct ehci_qh *qh, __le32 *c_maskp)
{
 int retval = -ENOSPC;

 if (qh->c_usecs && uframe >= 6)
  goto done;

 if (!check_period(oxu, frame, uframe, qh->period, qh->usecs))
  goto done;
 if (!qh->c_usecs) {
  retval = 0;
  *c_maskp = 0;
  goto done;
 }

done:
 return retval;
}
