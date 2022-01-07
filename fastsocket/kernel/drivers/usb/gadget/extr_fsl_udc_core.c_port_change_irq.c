
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int speed; } ;
struct fsl_udc {int usb_state; int resume_state; TYPE_1__ gadget; } ;
struct TYPE_4__ {int portsc1; } ;


 int PORTSCX_PORT_RESET ;



 int PORTSCX_PORT_SPEED_MASK ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_LOW ;
 int USB_SPEED_UNKNOWN ;
 int USB_STATE_DEFAULT ;
 TYPE_2__* dr_regs ;
 int fsl_readl (int *) ;

__attribute__((used)) static void port_change_irq(struct fsl_udc *udc)
{
 u32 speed;


 if (!(fsl_readl(&dr_regs->portsc1) & PORTSCX_PORT_RESET)) {

  speed = (fsl_readl(&dr_regs->portsc1)
    & PORTSCX_PORT_SPEED_MASK);
  switch (speed) {
  case 129:
   udc->gadget.speed = USB_SPEED_HIGH;
   break;
  case 130:
   udc->gadget.speed = USB_SPEED_FULL;
   break;
  case 128:
   udc->gadget.speed = USB_SPEED_LOW;
   break;
  default:
   udc->gadget.speed = USB_SPEED_UNKNOWN;
   break;
  }
 }


 if (!udc->resume_state)
  udc->usb_state = USB_STATE_DEFAULT;
}
