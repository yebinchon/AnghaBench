
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {scalar_t__ state; int rh_timer; } ;
struct oxu_hcd {int reclaim_ready; scalar_t__* reset_done; int lock; TYPE_1__* regs; int hcs_params; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int configured_flag; int command; int status; int * port_status; } ;


 int CMD_RUN ;
 unsigned int HCS_N_PORTS (int ) ;
 scalar_t__ HC_STATE_HALT ;
 int INTR_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PORT_OWNER ;
 int PORT_RESUME ;
 int STS_ERR ;
 int STS_FATAL ;
 int STS_HALT ;
 int STS_IAA ;
 int STS_INT ;
 int STS_PCD ;
 int dbg_cmd (struct oxu_hcd*,char*,int) ;
 int dbg_status (struct oxu_hcd*,char*,int) ;
 int ehci_reset (struct oxu_hcd*) ;
 int ehci_work (struct oxu_hcd*) ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int oxu_dbg (struct oxu_hcd*,char*,...) ;
 int oxu_err (struct oxu_hcd*,char*) ;
 int readl (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int usb_hc_died (struct usb_hcd*) ;
 int usb_hcd_poll_rh_status (struct usb_hcd*) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;
 int writel (int,int *) ;

__attribute__((used)) static irqreturn_t oxu210_hcd_irq(struct usb_hcd *hcd)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 u32 status, pcd_status = 0;
 int bh;

 spin_lock(&oxu->lock);

 status = readl(&oxu->regs->status);


 if (status == ~(u32) 0) {
  oxu_dbg(oxu, "device removed\n");
  goto dead;
 }


 status &= INTR_MASK;
 if (!status || unlikely(hcd->state == HC_STATE_HALT)) {
  spin_unlock(&oxu->lock);
  return IRQ_NONE;
 }


 writel(status, &oxu->regs->status);
 readl(&oxu->regs->command);
 bh = 0;
 if (likely((status & (STS_INT|STS_ERR)) != 0))
  bh = 1;


 if (status & STS_IAA) {
  oxu->reclaim_ready = 1;
  bh = 1;
 }


 if (status & STS_PCD) {
  unsigned i = HCS_N_PORTS(oxu->hcs_params);
  pcd_status = status;


  if (!(readl(&oxu->regs->command) & CMD_RUN))
   usb_hcd_resume_root_hub(hcd);

  while (i--) {
   int pstatus = readl(&oxu->regs->port_status[i]);

   if (pstatus & PORT_OWNER)
    continue;
   if (!(pstatus & PORT_RESUME)
     || oxu->reset_done[i] != 0)
    continue;





   oxu->reset_done[i] = jiffies + msecs_to_jiffies(20);
   oxu_dbg(oxu, "port %d remote wakeup\n", i + 1);
   mod_timer(&hcd->rh_timer, oxu->reset_done[i]);
  }
 }


 if (unlikely((status & STS_FATAL) != 0)) {

  status = readl(&oxu->regs->status);
  dbg_cmd(oxu, "fatal", readl(&oxu->regs->command));
  dbg_status(oxu, "fatal", status);
  if (status & STS_HALT) {
   oxu_err(oxu, "fatal error\n");
dead:
   ehci_reset(oxu);
   writel(0, &oxu->regs->configured_flag);
   usb_hc_died(hcd);



   bh = 1;
  }
 }

 if (bh)
  ehci_work(oxu);
 spin_unlock(&oxu->lock);
 if (pcd_status & STS_PCD)
  usb_hcd_poll_rh_status(hcd);
 return IRQ_HANDLED;
}
