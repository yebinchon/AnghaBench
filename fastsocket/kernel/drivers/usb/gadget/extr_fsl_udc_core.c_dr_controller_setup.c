
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsl_udc {int phy_mode; unsigned int ep_qh_dma; int ep_qh; } ;
struct TYPE_4__ {int endpointlistaddr; int usbsts; int usbmode; int usbcmd; int portsc1; } ;
struct TYPE_3__ {int snoop2; int snoop1; int control; } ;


 int EINVAL ;
 int ERR (char*) ;
 int ETIMEDOUT ;
 unsigned long FSL_UDC_RESET_TIMEOUT ;




 unsigned int PORTSCX_PHY_TYPE_SEL ;
 unsigned int PORTSCX_PORT_WIDTH ;
 unsigned int PORTSCX_PTS_FSLS ;
 unsigned int PORTSCX_PTS_ULPI ;
 unsigned int PORTSCX_PTS_UTMI ;
 unsigned int PORTSCX_PTW_16BIT ;
 unsigned int SNOOP_SIZE_2GB ;
 unsigned int USB_CMD_CTRL_RESET ;
 unsigned int USB_CMD_RUN_STOP ;
 unsigned int USB_CTRL_IOENB ;
 unsigned int USB_EP_LIST_ADDRESS_MASK ;
 unsigned int USB_MODE_CTRL_MODE_DEVICE ;
 unsigned int USB_MODE_SETUP_LOCK_OFF ;
 int VDBG (char*,int ,int,unsigned int) ;
 unsigned int __raw_readl (int *) ;
 int __raw_writel (unsigned int,int *) ;
 int cpu_relax () ;
 TYPE_2__* dr_regs ;
 unsigned int fsl_readl (int *) ;
 int fsl_writel (unsigned int,int *) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 TYPE_1__* usb_sys_regs ;

__attribute__((used)) static int dr_controller_setup(struct fsl_udc *udc)
{
 unsigned int tmp, portctrl;

 unsigned int ctrl;

 unsigned long timeout;



 portctrl = fsl_readl(&dr_regs->portsc1);
 portctrl &= ~(PORTSCX_PHY_TYPE_SEL | PORTSCX_PORT_WIDTH);
 switch (udc->phy_mode) {
 case 130:
  portctrl |= PORTSCX_PTS_ULPI;
  break;
 case 128:
  portctrl |= PORTSCX_PTW_16BIT;

 case 129:
  portctrl |= PORTSCX_PTS_UTMI;
  break;
 case 131:
  portctrl |= PORTSCX_PTS_FSLS;
  break;
 default:
  return -EINVAL;
 }
 fsl_writel(portctrl, &dr_regs->portsc1);


 tmp = fsl_readl(&dr_regs->usbcmd);
 tmp &= ~USB_CMD_RUN_STOP;
 fsl_writel(tmp, &dr_regs->usbcmd);

 tmp = fsl_readl(&dr_regs->usbcmd);
 tmp |= USB_CMD_CTRL_RESET;
 fsl_writel(tmp, &dr_regs->usbcmd);


 timeout = jiffies + 1000;
 while (fsl_readl(&dr_regs->usbcmd) & USB_CMD_CTRL_RESET) {
  if (time_after(jiffies, timeout)) {
   ERR("udc reset timeout!\n");
   return -ETIMEDOUT;
  }
  cpu_relax();
 }


 tmp = fsl_readl(&dr_regs->usbmode);
 tmp |= USB_MODE_CTRL_MODE_DEVICE;

 tmp |= USB_MODE_SETUP_LOCK_OFF;
 fsl_writel(tmp, &dr_regs->usbmode);


 fsl_writel(0, &dr_regs->usbsts);

 tmp = udc->ep_qh_dma;
 tmp &= USB_EP_LIST_ADDRESS_MASK;
 fsl_writel(tmp, &dr_regs->endpointlistaddr);

 VDBG("vir[qh_base] is %p phy[qh_base] is 0x%8x reg is 0x%8x",
  udc->ep_qh, (int)tmp,
  fsl_readl(&dr_regs->endpointlistaddr));



 ctrl = __raw_readl(&usb_sys_regs->control);
 ctrl |= USB_CTRL_IOENB;
 __raw_writel(ctrl, &usb_sys_regs->control);
 return 0;
}
