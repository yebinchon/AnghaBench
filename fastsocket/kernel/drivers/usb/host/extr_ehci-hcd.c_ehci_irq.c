
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {scalar_t__ state; int rh_timer; } ;
struct TYPE_3__ {int reclaim; int error; int normal; } ;
struct ehci_hcd {scalar_t__* reset_done; int lock; TYPE_2__* regs; int suspended_ports; scalar_t__ has_ppcd; int hcs_params; TYPE_1__ stats; scalar_t__ reclaim; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int configured_flag; int * port_status; int command; int status; } ;


 int CMD_IAAD ;
 int CMD_RUN ;
 int COUNT (int ) ;
 unsigned int HCS_N_PORTS (int ) ;
 scalar_t__ HC_STATE_HALT ;
 int INTR_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PORT_OWNER ;
 int PORT_PE ;
 int PORT_RESUME ;
 int PORT_SUSPEND ;
 int STS_ERR ;
 int STS_FATAL ;
 int STS_IAA ;
 int STS_INT ;
 int STS_PCD ;
 int dbg_cmd (struct ehci_hcd*,char*,int) ;
 int dbg_status (struct ehci_hcd*,char*,int) ;
 int ehci_dbg (struct ehci_hcd*,char*,...) ;
 int ehci_err (struct ehci_hcd*,char*) ;
 int ehci_halt (struct ehci_hcd*) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_reset (struct ehci_hcd*) ;
 int ehci_work (struct ehci_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int end_unlink_async (struct ehci_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (unsigned int,int *) ;
 scalar_t__ unlikely (int) ;
 int usb_hc_died (struct usb_hcd*) ;
 int usb_hcd_poll_rh_status (struct usb_hcd*) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;

__attribute__((used)) static irqreturn_t ehci_irq (struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 u32 status, masked_status, pcd_status = 0, cmd;
 int bh;

 spin_lock (&ehci->lock);

 status = ehci_readl(ehci, &ehci->regs->status);


 if (status == ~(u32) 0) {
  ehci_dbg (ehci, "device removed\n");
  goto dead;
 }


 masked_status = status & INTR_MASK;
 if (!masked_status || unlikely(hcd->state == HC_STATE_HALT)) {
  spin_unlock(&ehci->lock);
  return IRQ_NONE;
 }


 ehci_writel(ehci, masked_status, &ehci->regs->status);
 cmd = ehci_readl(ehci, &ehci->regs->command);
 bh = 0;
 if (likely ((status & (STS_INT|STS_ERR)) != 0)) {
  if (likely ((status & STS_ERR) == 0))
   COUNT (ehci->stats.normal);
  else
   COUNT (ehci->stats.error);
  bh = 1;
 }


 if (status & STS_IAA) {

  if (cmd & CMD_IAAD) {
   ehci_writel(ehci, cmd & ~CMD_IAAD,
     &ehci->regs->command);
   ehci_dbg(ehci, "IAA with IAAD still set?\n");
  }
  if (ehci->reclaim) {
   COUNT(ehci->stats.reclaim);
   end_unlink_async(ehci);
  } else
   ehci_dbg(ehci, "IAA with nothing to reclaim?\n");
 }


 if (status & STS_PCD) {
  unsigned i = HCS_N_PORTS (ehci->hcs_params);
  u32 ppcd = 0;


  pcd_status = status;


  if (!(cmd & CMD_RUN))
   usb_hcd_resume_root_hub(hcd);


  if (ehci->has_ppcd)
   ppcd = status >> 16;

  while (i--) {
   int pstatus;


   if (ehci->has_ppcd && !(ppcd & (1 << i)))
    continue;
   pstatus = ehci_readl(ehci,
      &ehci->regs->port_status[i]);

   if (pstatus & PORT_OWNER)
    continue;
   if (!(test_bit(i, &ehci->suspended_ports) &&
     ((pstatus & PORT_RESUME) ||
      !(pstatus & PORT_SUSPEND)) &&
     (pstatus & PORT_PE) &&
     ehci->reset_done[i] == 0))
    continue;






   ehci->reset_done[i] = jiffies + msecs_to_jiffies(25);
   ehci_dbg (ehci, "port %d remote wakeup\n", i + 1);
   mod_timer(&hcd->rh_timer, ehci->reset_done[i]);
  }
 }


 if (unlikely ((status & STS_FATAL) != 0)) {
  ehci_err(ehci, "fatal error\n");
  dbg_cmd(ehci, "fatal", cmd);
  dbg_status(ehci, "fatal", status);
  ehci_halt(ehci);
dead:
  ehci_reset(ehci);
  ehci_writel(ehci, 0, &ehci->regs->configured_flag);
  usb_hc_died(hcd);



  bh = 1;
 }

 if (bh)
  ehci_work (ehci);
 spin_unlock (&ehci->lock);
 if (pcd_status)
  usb_hcd_poll_rh_status(hcd);
 return IRQ_HANDLED;
}
