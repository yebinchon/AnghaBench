
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct qe_udc {TYPE_1__* usb_regs; } ;
struct qe_ep {size_t epnum; scalar_t__ state; struct qe_udc* udc; } ;
struct TYPE_2__ {int usb_usbmr; int * usb_usep; } ;


 scalar_t__ EP_STATE_IDLE ;
 scalar_t__ EP_STATE_NACK ;
 int USB_E_BSY_MASK ;
 int USB_E_RXB_MASK ;
 int USB_RHS_MASK ;
 int USB_RHS_NACK ;
 int clrbits16 (int *,int) ;
 int clrsetbits_be16 (int *,int ,int ) ;

__attribute__((used)) static int qe_eprx_nack(struct qe_ep *ep)
{
 u8 epnum = ep->epnum;
 struct qe_udc *udc = ep->udc;

 if (ep->state == EP_STATE_IDLE) {

  clrsetbits_be16(&udc->usb_regs->usb_usep[epnum],
    USB_RHS_MASK, USB_RHS_NACK);


  clrbits16(&udc->usb_regs->usb_usbmr,
    (USB_E_RXB_MASK | USB_E_BSY_MASK));

  ep->state = EP_STATE_NACK;
 }
 return 0;
}
