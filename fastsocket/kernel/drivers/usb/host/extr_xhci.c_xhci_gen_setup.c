
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* xhci_get_quirks_t ) (struct device*,struct xhci_hcd*) ;
typedef int u32 ;
struct xhci_hcd {int hcs_params1; int hcs_params2; int hcs_params3; int hcc_params; TYPE_2__* cap_regs; int hci_version; TYPE_2__* run_regs; TYPE_2__* op_regs; struct usb_hcd* main_hcd; } ;
struct TYPE_6__ {int no_stop_on_short; struct device* controller; TYPE_1__* root_hub; int sg_tablesize; } ;
struct usb_hcd {int has_tt; TYPE_3__ self; TYPE_2__* regs; int speed; scalar_t__ hcd_priv; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int hcc_params; int hc_capbase; int hcs_params3; int hcs_params2; int hcs_params1; int run_regs_off; } ;
struct TYPE_4__ {int speed; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HCC_64BIT_ADDR (int) ;
 int HCD_USB2 ;
 int HC_LENGTH (int) ;
 int HC_VERSION (int) ;
 int RTSOFF_MASK ;
 int USB_SPEED_HIGH ;
 int dma_set_mask (struct device*,int ) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int kfree (struct xhci_hcd*) ;
 struct xhci_hcd* kzalloc (int,int ) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_halt (struct xhci_hcd*) ;
 int xhci_init (struct usb_hcd*) ;
 int xhci_print_registers (struct xhci_hcd*) ;
 int xhci_readl (struct xhci_hcd*,int *) ;
 int xhci_reset (struct xhci_hcd*) ;

int xhci_gen_setup(struct usb_hcd *hcd, xhci_get_quirks_t get_quirks)
{
 struct xhci_hcd *xhci;
 struct device *dev = hcd->self.controller;
 int retval;
 u32 temp;


 hcd->self.sg_tablesize = ~0;

 hcd->self.no_stop_on_short = 1;

 if (usb_hcd_is_primary_hcd(hcd)) {
  xhci = kzalloc(sizeof(struct xhci_hcd), GFP_KERNEL);
  if (!xhci)
   return -ENOMEM;
  *((struct xhci_hcd **) hcd->hcd_priv) = xhci;
  xhci->main_hcd = hcd;



  hcd->speed = HCD_USB2;
  hcd->self.root_hub->speed = USB_SPEED_HIGH;





  hcd->has_tt = 1;
 } else {



  xhci = hcd_to_xhci(hcd);
  temp = xhci_readl(xhci, &xhci->cap_regs->hcc_params);
  if (HCC_64BIT_ADDR(temp)) {
   xhci_dbg(xhci, "Enabling 64-bit DMA addresses.\n");
   dma_set_mask(hcd->self.controller, DMA_BIT_MASK(64));
  } else {
   dma_set_mask(hcd->self.controller, DMA_BIT_MASK(32));
  }
  return 0;
 }

 xhci->cap_regs = hcd->regs;
 xhci->op_regs = hcd->regs +
  HC_LENGTH(xhci_readl(xhci, &xhci->cap_regs->hc_capbase));
 xhci->run_regs = hcd->regs +
  (xhci_readl(xhci, &xhci->cap_regs->run_regs_off) & RTSOFF_MASK);

 xhci->hcs_params1 = xhci_readl(xhci, &xhci->cap_regs->hcs_params1);
 xhci->hcs_params2 = xhci_readl(xhci, &xhci->cap_regs->hcs_params2);
 xhci->hcs_params3 = xhci_readl(xhci, &xhci->cap_regs->hcs_params3);
 xhci->hcc_params = xhci_readl(xhci, &xhci->cap_regs->hc_capbase);
 xhci->hci_version = HC_VERSION(xhci->hcc_params);
 xhci->hcc_params = xhci_readl(xhci, &xhci->cap_regs->hcc_params);
 xhci_print_registers(xhci);

 get_quirks(dev, xhci);


 retval = xhci_halt(xhci);
 if (retval)
  goto error;

 xhci_dbg(xhci, "Resetting HCD\n");

 retval = xhci_reset(xhci);
 if (retval)
  goto error;
 xhci_dbg(xhci, "Reset complete\n");

 temp = xhci_readl(xhci, &xhci->cap_regs->hcc_params);
 if (HCC_64BIT_ADDR(temp)) {
  xhci_dbg(xhci, "Enabling 64-bit DMA addresses.\n");
  dma_set_mask(hcd->self.controller, DMA_BIT_MASK(64));
 } else {
  dma_set_mask(hcd->self.controller, DMA_BIT_MASK(32));
 }

 xhci_dbg(xhci, "Calling HCD init\n");

 retval = xhci_init(hcd);
 if (retval)
  goto error;
 xhci_dbg(xhci, "Called HCD init\n");
 return 0;
error:
 kfree(xhci);
 return retval;
}
