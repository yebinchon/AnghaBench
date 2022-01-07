
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fsl_udc {struct ep_queue_head* ep_qh; } ;
struct ep_queue_head {scalar_t__ setup_buffer; } ;
struct TYPE_2__ {int usbcmd; int endptsetupstat; } ;


 int EP_DIR_OUT ;
 int USB_CMD_SUTW ;
 TYPE_1__* dr_regs ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void tripwire_handler(struct fsl_udc *udc, u8 ep_num, u8 *buffer_ptr)
{
 u32 temp;
 struct ep_queue_head *qh;

 qh = &udc->ep_qh[ep_num * 2 + EP_DIR_OUT];


 temp = fsl_readl(&dr_regs->endptsetupstat);
 fsl_writel(temp | (1 << ep_num), &dr_regs->endptsetupstat);


 do {

  temp = fsl_readl(&dr_regs->usbcmd);
  fsl_writel(temp | USB_CMD_SUTW, &dr_regs->usbcmd);


  memcpy(buffer_ptr, (u8 *) qh->setup_buffer, 8);
 } while (!(fsl_readl(&dr_regs->usbcmd) & USB_CMD_SUTW));


 temp = fsl_readl(&dr_regs->usbcmd);
 fsl_writel(temp & ~USB_CMD_SUTW, &dr_regs->usbcmd);
}
