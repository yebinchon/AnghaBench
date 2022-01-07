
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * endptctrl; } ;


 int EPCTRL_RX_DATA_TOGGLE_RST ;
 int EPCTRL_RX_EP_STALL ;
 int EPCTRL_TX_DATA_TOGGLE_RST ;
 int EPCTRL_TX_EP_STALL ;
 TYPE_1__* dr_regs ;
 int fsl_readl (int *) ;
 int fsl_writel (int ,int *) ;

__attribute__((used)) static void
dr_ep_change_stall(unsigned char ep_num, unsigned char dir, int value)
{
 u32 tmp_epctrl = 0;

 tmp_epctrl = fsl_readl(&dr_regs->endptctrl[ep_num]);

 if (value) {

  if (dir)
   tmp_epctrl |= EPCTRL_TX_EP_STALL;
  else
   tmp_epctrl |= EPCTRL_RX_EP_STALL;
 } else {

  if (dir) {
   tmp_epctrl &= ~EPCTRL_TX_EP_STALL;
   tmp_epctrl |= EPCTRL_TX_DATA_TOGGLE_RST;
  } else {
   tmp_epctrl &= ~EPCTRL_RX_EP_STALL;
   tmp_epctrl |= EPCTRL_RX_DATA_TOGGLE_RST;
  }
 }
 fsl_writel(tmp_epctrl, &dr_regs->endptctrl[ep_num]);
}
