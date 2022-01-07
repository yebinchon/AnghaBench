
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int uses_new_polling; int state; } ;
struct oxu_hcd {int periodic_dma; int command; int sbrn; TYPE_3__* regs; TYPE_2__* caps; TYPE_1__* async; } ;
struct TYPE_6__ {int intr_enable; int command; int configured_flag; int segment; int async_next; int frame_list; } ;
struct TYPE_5__ {int hc_capbase; int hcc_params; } ;
struct TYPE_4__ {scalar_t__ qh_dma; } ;


 int CMD_ASE ;
 int CMD_IAAD ;
 int CMD_LRESET ;
 int CMD_PSE ;
 int CMD_RESET ;
 int CMD_RUN ;
 int DRIVER_VERSION ;
 int FLAG_CF ;
 scalar_t__ HCC_64BIT_ADDR (int) ;
 int HC_STATE_RUNNING ;
 int HC_VERSION (int) ;
 int INTR_MASK ;
 int dbg_cmd (struct oxu_hcd*,char*,int) ;
 int ehci_mem_cleanup (struct oxu_hcd*) ;
 int ehci_reset (struct oxu_hcd*) ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 scalar_t__ ignore_oc ;
 int oxu_info (struct oxu_hcd*,char*,int,int,int,int,int ,char*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int oxu_run(struct usb_hcd *hcd)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 int retval;
 u32 temp, hcc_params;

 hcd->uses_new_polling = 1;


 retval = ehci_reset(oxu);
 if (retval != 0) {
  ehci_mem_cleanup(oxu);
  return retval;
 }
 writel(oxu->periodic_dma, &oxu->regs->frame_list);
 writel((u32) oxu->async->qh_dma, &oxu->regs->async_next);
 hcc_params = readl(&oxu->caps->hcc_params);
 if (HCC_64BIT_ADDR(hcc_params))
  writel(0, &oxu->regs->segment);

 oxu->command &= ~(CMD_LRESET | CMD_IAAD | CMD_PSE |
    CMD_ASE | CMD_RESET);
 oxu->command |= CMD_RUN;
 writel(oxu->command, &oxu->regs->command);
 dbg_cmd(oxu, "init", oxu->command);







 hcd->state = HC_STATE_RUNNING;
 writel(FLAG_CF, &oxu->regs->configured_flag);
 readl(&oxu->regs->command);

 temp = HC_VERSION(readl(&oxu->caps->hc_capbase));
 oxu_info(oxu, "USB %x.%x started, quasi-EHCI %x.%02x, driver %s%s\n",
  ((oxu->sbrn & 0xf0)>>4), (oxu->sbrn & 0x0f),
  temp >> 8, temp & 0xff, DRIVER_VERSION,
  ignore_oc ? ", overcurrent ignored" : "");

 writel(INTR_MASK, &oxu->regs->intr_enable);

 return 0;
}
