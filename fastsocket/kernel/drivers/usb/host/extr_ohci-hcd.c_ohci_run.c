
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int controller; } ;
struct usb_hcd {int uses_new_polling; void* state; int flags; TYPE_2__ self; } ;
struct ohci_hcd {int fminterval; int hc_control; int flags; int * ed_to_check; scalar_t__ eds_scheduled; int unlink_watchdog; int lock; scalar_t__ next_statechange; TYPE_3__* regs; scalar_t__ hcca_dma; int hcca; } ;
struct ohci_hcca {int dummy; } ;
struct TYPE_4__ {int b; int status; int a; } ;
struct TYPE_6__ {int control; TYPE_1__ roothub; int intrenable; int intrstatus; int periodicstart; int fminterval; int hcca; int ed_bulkhead; int ed_controlhead; int cmdstatus; } ;


 int EOVERFLOW ;
 int FI ;
 int FSMP (int) ;
 int HCD_FLAG_POLL_RH ;
 void* HC_STATE_RUNNING ;
 int const OHCI_CONTROL_INIT ;
 int OHCI_CTRL_HCFS ;
 int OHCI_CTRL_RWC ;
 int OHCI_HCR ;
 int OHCI_INTR_INIT ;
 int OHCI_QUIRK_AMD756 ;
 int OHCI_QUIRK_HUB_POWER ;
 int OHCI_QUIRK_INITRESET ;
 int OHCI_QUIRK_SUPERIO ;

 int OHCI_USB_RESET ;


 int RH_A_NOCP ;
 int RH_A_NPS ;
 int RH_A_OCPM ;
 int RH_A_POTPGT ;
 int RH_A_PSM ;
 int RH_B_PPCM ;
 int RH_HS_DRWE ;
 int RH_HS_LPSC ;
 scalar_t__ STATECHANGE_DELAY ;
 int device_set_wakeup_capable (int ,int) ;
 int disable (struct ohci_hcd*) ;
 scalar_t__ jiffies ;
 int mdelay (int) ;
 int memset (int ,int ,int) ;
 int msleep (int) ;
 int ohci_dbg (struct ohci_hcd*,char*,...) ;
 int ohci_dump (struct ohci_hcd*,int) ;
 int ohci_err (struct ohci_hcd*,char*,...) ;
 int ohci_readl (struct ohci_hcd*,int *) ;
 struct usb_hcd* ohci_to_hcd (struct ohci_hcd*) ;
 int ohci_writel (struct ohci_hcd*,int,int *) ;
 int periodic_reinit (struct ohci_hcd*) ;
 scalar_t__ quirk_zfmicro (struct ohci_hcd*) ;
 int roothub_a (struct ohci_hcd*) ;
 int set_bit (int ,int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (int) ;
 int unlink_watchdog_func ;

__attribute__((used)) static int ohci_run (struct ohci_hcd *ohci)
{
 u32 mask, val;
 int first = ohci->fminterval == 0;
 struct usb_hcd *hcd = ohci_to_hcd(ohci);

 disable (ohci);


 if (first) {

  val = ohci_readl (ohci, &ohci->regs->fminterval);
  ohci->fminterval = val & 0x3fff;
  if (ohci->fminterval != FI)
   ohci_dbg (ohci, "fminterval delta %d\n",
    ohci->fminterval - FI);
  ohci->fminterval |= FSMP (ohci->fminterval) << 16;

 }







 if ((ohci->hc_control & OHCI_CTRL_RWC) != 0)
  device_set_wakeup_capable(hcd->self.controller, 1);

 switch (ohci->hc_control & OHCI_CTRL_HCFS) {
 case 130:
  val = 0;
  break;
 case 128:
 case 129:
  ohci->hc_control &= OHCI_CTRL_RWC;
  ohci->hc_control |= 129;
  val = 10 ;
  break;

 default:
  ohci->hc_control &= OHCI_CTRL_RWC;
  ohci->hc_control |= OHCI_USB_RESET;
  val = 50 ;
  break;
 }
 ohci_writel (ohci, ohci->hc_control, &ohci->regs->control);

 (void) ohci_readl (ohci, &ohci->regs->control);
 msleep(val);

 memset (ohci->hcca, 0, sizeof (struct ohci_hcca));


 spin_lock_irq (&ohci->lock);

retry:

 ohci_writel (ohci, OHCI_HCR, &ohci->regs->cmdstatus);
 val = 30;
 while ((ohci_readl (ohci, &ohci->regs->cmdstatus) & OHCI_HCR) != 0) {
  if (--val == 0) {
   spin_unlock_irq (&ohci->lock);
   ohci_err (ohci, "USB HC reset timed out!\n");
   return -1;
  }
  udelay (1);
 }
 if (ohci->flags & OHCI_QUIRK_INITRESET) {
  ohci_writel (ohci, ohci->hc_control, &ohci->regs->control);

  (void) ohci_readl (ohci, &ohci->regs->control);
 }



 ohci_writel (ohci, 0, &ohci->regs->ed_controlhead);
 ohci_writel (ohci, 0, &ohci->regs->ed_bulkhead);


 ohci_writel (ohci, (u32) ohci->hcca_dma, &ohci->regs->hcca);

 periodic_reinit (ohci);




 if ((ohci_readl (ohci, &ohci->regs->fminterval) & 0x3fff0000) == 0
   || !ohci_readl (ohci, &ohci->regs->periodicstart)) {
  if (!(ohci->flags & OHCI_QUIRK_INITRESET)) {
   ohci->flags |= OHCI_QUIRK_INITRESET;
   ohci_dbg (ohci, "enabling initreset quirk\n");
   goto retry;
  }
  spin_unlock_irq (&ohci->lock);
  ohci_err (ohci, "init err (%08x %04x)\n",
   ohci_readl (ohci, &ohci->regs->fminterval),
   ohci_readl (ohci, &ohci->regs->periodicstart));
  return -EOVERFLOW;
 }


 set_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 hcd->uses_new_polling = 1;


 ohci->hc_control &= OHCI_CTRL_RWC;
 ohci->hc_control |= OHCI_CONTROL_INIT | 130;
 ohci_writel (ohci, ohci->hc_control, &ohci->regs->control);
 hcd->state = HC_STATE_RUNNING;


 ohci_writel (ohci, RH_HS_DRWE, &ohci->regs->roothub.status);


 mask = OHCI_INTR_INIT;
 ohci_writel (ohci, ~0, &ohci->regs->intrstatus);
 ohci_writel (ohci, mask, &ohci->regs->intrenable);


 val = roothub_a (ohci);
 val &= ~(RH_A_PSM | RH_A_OCPM);
 if (ohci->flags & OHCI_QUIRK_SUPERIO) {

  val |= RH_A_NOCP;
  val &= ~(RH_A_POTPGT | RH_A_NPS);
  ohci_writel (ohci, val, &ohci->regs->roothub.a);
 } else if ((ohci->flags & OHCI_QUIRK_AMD756) ||
   (ohci->flags & OHCI_QUIRK_HUB_POWER)) {



  val |= RH_A_NPS;
  ohci_writel (ohci, val, &ohci->regs->roothub.a);
 }
 ohci_writel (ohci, RH_HS_LPSC, &ohci->regs->roothub.status);
 ohci_writel (ohci, (val & RH_A_NPS) ? 0 : RH_B_PPCM,
      &ohci->regs->roothub.b);

 (void) ohci_readl (ohci, &ohci->regs->control);

 ohci->next_statechange = jiffies + STATECHANGE_DELAY;
 spin_unlock_irq (&ohci->lock);


 mdelay ((val >> 23) & 0x1fe);
 hcd->state = HC_STATE_RUNNING;

 if (quirk_zfmicro(ohci)) {

  setup_timer(&ohci->unlink_watchdog, unlink_watchdog_func,
    (unsigned long) ohci);

  ohci->eds_scheduled = 0;
  ohci->ed_to_check = ((void*)0);
 }

 ohci_dump (ohci, 1);

 return 0;
}
