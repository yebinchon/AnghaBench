
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ a_alt_hnp_support; scalar_t__ a_hnp_support; scalar_t__ b_hnp_enable; } ;
struct fsl_udc {int usb_state; TYPE_1__ gadget; scalar_t__ remote_wakeup; int ep0_state; scalar_t__ ep0_dir; scalar_t__ resume_state; scalar_t__ device_address; } ;
struct TYPE_4__ {int portsc1; int endptflush; int endpointprime; int endptcomplete; int endptsetupstat; int deviceaddr; } ;


 int ERR (char*) ;
 int PORTSCX_PORT_RESET ;
 int USB_DEVICE_ADDRESS_MASK ;
 int USB_STATE_ATTACHED ;
 int USB_STATE_DEFAULT ;
 int VDBG (char*) ;
 int WAIT_FOR_SETUP ;
 int cpu_relax () ;
 int dr_controller_run (struct fsl_udc*) ;
 int dr_controller_setup (struct fsl_udc*) ;
 TYPE_2__* dr_regs ;
 int ep0_setup (struct fsl_udc*) ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 int jiffies ;
 int reset_queues (struct fsl_udc*) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static void reset_irq(struct fsl_udc *udc)
{
 u32 temp;
 unsigned long timeout;


 temp = fsl_readl(&dr_regs->deviceaddr);
 fsl_writel(temp & ~USB_DEVICE_ADDRESS_MASK, &dr_regs->deviceaddr);

 udc->device_address = 0;


 udc->resume_state = 0;
 udc->ep0_dir = 0;
 udc->ep0_state = WAIT_FOR_SETUP;
 udc->remote_wakeup = 0;
 udc->gadget.b_hnp_enable = 0;
 udc->gadget.a_hnp_support = 0;
 udc->gadget.a_alt_hnp_support = 0;


 temp = fsl_readl(&dr_regs->endptsetupstat);
 fsl_writel(temp, &dr_regs->endptsetupstat);


 temp = fsl_readl(&dr_regs->endptcomplete);
 fsl_writel(temp, &dr_regs->endptcomplete);

 timeout = jiffies + 100;
 while (fsl_readl(&dr_regs->endpointprime)) {

  if (time_after(jiffies, timeout)) {
   ERR("Timeout for reset\n");
   break;
  }
  cpu_relax();
 }


 fsl_writel(0xffffffff, &dr_regs->endptflush);

 if (fsl_readl(&dr_regs->portsc1) & PORTSCX_PORT_RESET) {
  VDBG("Bus reset");


  reset_queues(udc);
  udc->usb_state = USB_STATE_DEFAULT;
 } else {
  VDBG("Controller reset");


  dr_controller_setup(udc);


  reset_queues(udc);

  ep0_setup(udc);


  dr_controller_run(udc);
  udc->usb_state = USB_STATE_ATTACHED;
 }
}
