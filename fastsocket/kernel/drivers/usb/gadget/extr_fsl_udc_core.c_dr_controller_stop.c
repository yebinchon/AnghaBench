
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_udc {int stopped; } ;
struct TYPE_2__ {int usbcmd; int usbintr; } ;


 unsigned int USB_CMD_RUN_STOP ;
 TYPE_1__* dr_regs ;
 unsigned int fsl_readl (int *) ;
 int fsl_writel (unsigned int,int *) ;

__attribute__((used)) static void dr_controller_stop(struct fsl_udc *udc)
{
 unsigned int tmp;


 fsl_writel(0, &dr_regs->usbintr);


 udc->stopped = 1;





 tmp = fsl_readl(&dr_regs->usbcmd);
 tmp &= ~USB_CMD_RUN_STOP;
 fsl_writel(tmp, &dr_regs->usbcmd);

 return;
}
