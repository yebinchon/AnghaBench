
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int state; } ;
struct oxu_hcd {int lock; scalar_t__* reset_done; TYPE_1__* regs; int hcs_params; } ;
struct TYPE_2__ {int * port_status; } ;


 int HCS_N_PORTS (int ) ;
 int HC_IS_RUNNING (int ) ;
 int PORT_CONNECT ;
 int PORT_CSC ;
 int PORT_OCC ;
 int PORT_PEC ;
 int PORT_RESUME ;
 int STS_PCD ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int ignore_oc ;
 int jiffies ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after_eq (int ,scalar_t__) ;

__attribute__((used)) static int oxu_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 u32 temp, mask, status = 0;
 int ports, i, retval = 1;
 unsigned long flags;


 if (!HC_IS_RUNNING(hcd->state))
  return 0;


 buf[0] = 0;
 ports = HCS_N_PORTS(oxu->hcs_params);
 if (ports > 7) {
  buf[1] = 0;
  retval++;
 }







 if (!ignore_oc)
  mask = PORT_CSC | PORT_PEC | PORT_OCC;
 else
  mask = PORT_CSC | PORT_PEC;




 spin_lock_irqsave(&oxu->lock, flags);
 for (i = 0; i < ports; i++) {
  temp = readl(&oxu->regs->port_status[i]);
  if (!(temp & PORT_CONNECT))
   oxu->reset_done[i] = 0;
  if ((temp & mask) != 0 || ((temp & PORT_RESUME) != 0 &&
    time_after_eq(jiffies, oxu->reset_done[i]))) {
   if (i < 7)
    buf[0] |= 1 << (i + 1);
   else
    buf[1] |= 1 << (i - 7);
   status = STS_PCD;
  }
 }

 spin_unlock_irqrestore(&oxu->lock, flags);
 return status ? retval : 0;
}
