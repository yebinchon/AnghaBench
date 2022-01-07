
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int state; } ;
struct ehci_hcd {int lock; scalar_t__* reset_done; int port_c_suspend; TYPE_1__* regs; scalar_t__ has_ppcd; int hcs_params; } ;
struct TYPE_2__ {int * port_status; int status; } ;


 int HCS_N_PORTS (int ) ;
 int HC_IS_RUNNING (int ) ;
 int PORT_CSC ;
 int PORT_OCC ;
 int PORT_PEC ;
 int STS_PCD ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int ignore_oc ;
 int jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int,int *) ;
 scalar_t__ time_after_eq (int ,scalar_t__) ;

__attribute__((used)) static int
ehci_hub_status_data (struct usb_hcd *hcd, char *buf)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 u32 temp, status = 0;
 u32 mask;
 int ports, i, retval = 1;
 unsigned long flags;
 u32 ppcd = 0;


 if (!HC_IS_RUNNING(hcd->state))
  return 0;


 buf [0] = 0;
 ports = HCS_N_PORTS (ehci->hcs_params);
 if (ports > 7) {
  buf [1] = 0;
  retval++;
 }







 if (!ignore_oc)
  mask = PORT_CSC | PORT_PEC | PORT_OCC;
 else
  mask = PORT_CSC | PORT_PEC;





 spin_lock_irqsave (&ehci->lock, flags);


 if (ehci->has_ppcd)
  ppcd = ehci_readl(ehci, &ehci->regs->status) >> 16;

 for (i = 0; i < ports; i++) {

  if (ehci->has_ppcd && !(ppcd & (1 << i)))
   continue;
  temp = ehci_readl(ehci, &ehci->regs->port_status [i]);
  if ((temp & mask) != 0 || test_bit(i, &ehci->port_c_suspend)
    || (ehci->reset_done[i] && time_after_eq(
     jiffies, ehci->reset_done[i]))) {
   if (i < 7)
       buf [0] |= 1 << (i + 1);
   else
       buf [1] |= 1 << (i - 7);
   status = STS_PCD;
  }
 }

 spin_unlock_irqrestore (&ehci->lock, flags);
 return status ? retval : 0;
}
