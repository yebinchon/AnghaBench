
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_udc {scalar_t__ ep0_dir; int ep0_state; } ;
struct TYPE_2__ {int * endptctrl; } ;


 int EPCTRL_RX_EP_STALL ;
 int EPCTRL_TX_EP_STALL ;
 int WAIT_FOR_SETUP ;
 TYPE_1__* dr_regs ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;

__attribute__((used)) static void ep0stall(struct fsl_udc *udc)
{
 u32 tmp;


 tmp = fsl_readl(&dr_regs->endptctrl[0]);
 tmp |= EPCTRL_TX_EP_STALL | EPCTRL_RX_EP_STALL;
 fsl_writel(tmp, &dr_regs->endptctrl[0]);
 udc->ep0_state = WAIT_FOR_SETUP;
 udc->ep0_dir = 0;
}
