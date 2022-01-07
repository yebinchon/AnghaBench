
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct pxa_udc {int dummy; } ;


 int EHOSTUNREACH ;
 int UDCCR ;
 int UDCCR_DWRE ;
 int UDCCR_UDR ;
 struct pxa_udc* to_gadget_udc (struct usb_gadget*) ;
 int udc_readl (struct pxa_udc*,int ) ;
 int udc_set_mask_UDCCR (struct pxa_udc*,int ) ;

__attribute__((used)) static int pxa_udc_wakeup(struct usb_gadget *_gadget)
{
 struct pxa_udc *udc = to_gadget_udc(_gadget);


 if ((udc_readl(udc, UDCCR) & UDCCR_DWRE) == 0)
  return -EHOSTUNREACH;
 udc_set_mask_UDCCR(udc, UDCCR_UDR);
 return 0;
}
