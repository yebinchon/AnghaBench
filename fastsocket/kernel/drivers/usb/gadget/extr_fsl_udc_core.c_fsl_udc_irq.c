
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fsl_udc {scalar_t__ usb_state; int lock; int local_setup_buff; scalar_t__ stopped; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int endptcomplete; int endptsetupstat; int portsc1; int usbsts; int usbintr; } ;


 int EP_SETUP_STATUS_EP0 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PORTSCX_PORT_SUSPEND ;
 scalar_t__ USB_STATE_SUSPENDED ;
 int USB_STS_ERR ;
 int USB_STS_INT ;
 int USB_STS_PORT_CHANGE ;
 int USB_STS_RESET ;
 int USB_STS_SOF ;
 int USB_STS_SUSPEND ;
 int USB_STS_SYS_ERR ;
 int VDBG (char*,...) ;
 int bus_resume (struct fsl_udc*) ;
 TYPE_1__* dr_regs ;
 int dtd_complete_irq (struct fsl_udc*) ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 int port_change_irq (struct fsl_udc*) ;
 int reset_irq (struct fsl_udc*) ;
 int setup_received_irq (struct fsl_udc*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int suspend_irq (struct fsl_udc*) ;
 int tripwire_handler (struct fsl_udc*,int ,int *) ;

__attribute__((used)) static irqreturn_t fsl_udc_irq(int irq, void *_udc)
{
 struct fsl_udc *udc = _udc;
 u32 irq_src;
 irqreturn_t status = IRQ_NONE;
 unsigned long flags;


 if (udc->stopped)
  return IRQ_NONE;
 spin_lock_irqsave(&udc->lock, flags);
 irq_src = fsl_readl(&dr_regs->usbsts) & fsl_readl(&dr_regs->usbintr);

 fsl_writel(irq_src, &dr_regs->usbsts);




 if (udc->usb_state == USB_STATE_SUSPENDED)
  if ((fsl_readl(&dr_regs->portsc1) & PORTSCX_PORT_SUSPEND) == 0)
   bus_resume(udc);


 if (irq_src & USB_STS_INT) {
  VDBG("Packet int");

  if (fsl_readl(&dr_regs->endptsetupstat) & EP_SETUP_STATUS_EP0) {
   tripwire_handler(udc, 0,
     (u8 *) (&udc->local_setup_buff));
   setup_received_irq(udc, &udc->local_setup_buff);
   status = IRQ_HANDLED;
  }


  if (fsl_readl(&dr_regs->endptcomplete)) {
   dtd_complete_irq(udc);
   status = IRQ_HANDLED;
  }
 }


 if (irq_src & USB_STS_SOF) {
  status = IRQ_HANDLED;
 }


 if (irq_src & USB_STS_PORT_CHANGE) {
  port_change_irq(udc);
  status = IRQ_HANDLED;
 }


 if (irq_src & USB_STS_RESET) {
  reset_irq(udc);
  status = IRQ_HANDLED;
 }


 if (irq_src & USB_STS_SUSPEND) {
  suspend_irq(udc);
  status = IRQ_HANDLED;
 }

 if (irq_src & (USB_STS_ERR | USB_STS_SYS_ERR)) {
  VDBG("Error IRQ %x", irq_src);
 }

 spin_unlock_irqrestore(&udc->lock, flags);
 return status;
}
