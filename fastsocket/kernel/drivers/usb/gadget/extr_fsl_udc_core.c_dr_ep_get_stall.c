
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * endptctrl; } ;


 int EPCTRL_RX_EP_STALL ;
 int EPCTRL_TX_EP_STALL ;
 TYPE_1__* dr_regs ;
 int fsl_readl (int *) ;

__attribute__((used)) static int dr_ep_get_stall(unsigned char ep_num, unsigned char dir)
{
 u32 epctrl;

 epctrl = fsl_readl(&dr_regs->endptctrl[ep_num]);
 if (dir)
  return (epctrl & EPCTRL_TX_EP_STALL) ? 1 : 0;
 else
  return (epctrl & EPCTRL_RX_EP_STALL) ? 1 : 0;
}
