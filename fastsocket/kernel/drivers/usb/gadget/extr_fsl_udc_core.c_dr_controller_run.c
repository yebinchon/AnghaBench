
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_udc {scalar_t__ stopped; } ;
struct TYPE_2__ {int usbcmd; int usbmode; int usbintr; } ;


 int USB_CMD_RUN_STOP ;
 int USB_INTR_DEVICE_SUSPEND ;
 int USB_INTR_ERR_INT_EN ;
 int USB_INTR_INT_EN ;
 int USB_INTR_PTC_DETECT_EN ;
 int USB_INTR_RESET_EN ;
 int USB_INTR_SYS_ERR_EN ;
 int USB_MODE_CTRL_MODE_DEVICE ;
 TYPE_1__* dr_regs ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;

__attribute__((used)) static void dr_controller_run(struct fsl_udc *udc)
{
 u32 temp;


 temp = USB_INTR_INT_EN | USB_INTR_ERR_INT_EN
  | USB_INTR_PTC_DETECT_EN | USB_INTR_RESET_EN
  | USB_INTR_DEVICE_SUSPEND | USB_INTR_SYS_ERR_EN;

 fsl_writel(temp, &dr_regs->usbintr);


 udc->stopped = 0;


 temp = fsl_readl(&dr_regs->usbmode);
 temp |= USB_MODE_CTRL_MODE_DEVICE;
 fsl_writel(temp, &dr_regs->usbmode);


 temp = fsl_readl(&dr_regs->usbcmd);
 temp |= USB_CMD_RUN_STOP;
 fsl_writel(temp, &dr_regs->usbcmd);

 return;
}
