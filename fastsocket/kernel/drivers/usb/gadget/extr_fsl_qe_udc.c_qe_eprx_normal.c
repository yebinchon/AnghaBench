
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qe_udc {TYPE_1__* usb_regs; } ;
struct qe_ep {scalar_t__ state; size_t epnum; scalar_t__ has_data; struct qe_udc* udc; } ;
struct TYPE_2__ {int usb_usbmr; int usb_usber; int * usb_usep; } ;


 scalar_t__ EP_STATE_IDLE ;
 scalar_t__ EP_STATE_NACK ;
 int USB_E_BSY_MASK ;
 int USB_E_RXB_MASK ;
 int USB_RTHS_MASK ;
 int USB_THS_IGNORE_IN ;
 int clrsetbits_be16 (int *,int ,int ) ;
 int out_be16 (int *,int) ;
 int setbits16 (int *,int) ;

__attribute__((used)) static int qe_eprx_normal(struct qe_ep *ep)
{
 struct qe_udc *udc = ep->udc;

 if (ep->state == EP_STATE_NACK) {
  clrsetbits_be16(&udc->usb_regs->usb_usep[ep->epnum],
    USB_RTHS_MASK, USB_THS_IGNORE_IN);


  out_be16(&udc->usb_regs->usb_usber,
    USB_E_BSY_MASK | USB_E_RXB_MASK);
  setbits16(&udc->usb_regs->usb_usbmr,
    (USB_E_RXB_MASK | USB_E_BSY_MASK));

  ep->state = EP_STATE_IDLE;
  ep->has_data = 0;
 }

 return 0;
}
