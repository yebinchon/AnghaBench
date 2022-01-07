
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int uses_new_polling; scalar_t__ regs; int state; } ;
struct isp1760_hcd {int dummy; } ;


 int CMD_LRESET ;
 int CMD_RESET ;
 int CMD_RUN ;
 int FLAG_CF ;
 scalar_t__ HC_CHIP_ID_REG ;
 scalar_t__ HC_CONFIGFLAG ;
 scalar_t__ HC_HW_MODE_CTRL ;
 int HC_STATE_RUNNING ;
 scalar_t__ HC_USBCMD ;
 int HW_GLOBAL_INTR_EN ;
 int down_write (int *) ;
 int ehci_cf_port_reset_rwsem ;
 int handshake (struct isp1760_hcd*,scalar_t__,int,int,int) ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int isp1760_enable_interrupts (struct usb_hcd*) ;
 int isp1760_info (struct isp1760_hcd*,char*,int,int) ;
 int isp1760_init_maps (struct usb_hcd*) ;
 int isp1760_readl (scalar_t__) ;
 int isp1760_writel (int,scalar_t__) ;
 int up_write (int *) ;

__attribute__((used)) static int isp1760_run(struct usb_hcd *hcd)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 int retval;
 u32 temp;
 u32 command;
 u32 chipid;

 hcd->uses_new_polling = 1;

 hcd->state = HC_STATE_RUNNING;
 isp1760_enable_interrupts(hcd);
 temp = isp1760_readl(hcd->regs + HC_HW_MODE_CTRL);
 isp1760_writel(temp | HW_GLOBAL_INTR_EN, hcd->regs + HC_HW_MODE_CTRL);

 command = isp1760_readl(hcd->regs + HC_USBCMD);
 command &= ~(CMD_LRESET|CMD_RESET);
 command |= CMD_RUN;
 isp1760_writel(command, hcd->regs + HC_USBCMD);

 retval = handshake(priv, hcd->regs + HC_USBCMD, CMD_RUN, CMD_RUN,
   250 * 1000);
 if (retval)
  return retval;






 down_write(&ehci_cf_port_reset_rwsem);
 isp1760_writel(FLAG_CF, hcd->regs + HC_CONFIGFLAG);

 retval = handshake(priv, hcd->regs + HC_CONFIGFLAG, FLAG_CF, FLAG_CF,
   250 * 1000);
 up_write(&ehci_cf_port_reset_rwsem);
 if (retval)
  return retval;

 chipid = isp1760_readl(hcd->regs + HC_CHIP_ID_REG);
 isp1760_info(priv, "USB ISP %04x HW rev. %d started\n", chipid & 0xffff,
   chipid >> 16);



 isp1760_init_maps(hcd);





 return 0;
}
