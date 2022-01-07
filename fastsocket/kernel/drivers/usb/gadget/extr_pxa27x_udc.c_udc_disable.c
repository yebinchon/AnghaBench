
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct pxa_udc {scalar_t__ enabled; TYPE_1__ gadget; int clk; } ;


 int UDCCR_UDE ;
 int UDCICR0 ;
 int UDCICR1 ;
 int USB_SPEED_UNKNOWN ;
 int clk_disable (int ) ;
 int ep0_idle (struct pxa_udc*) ;
 int udc_clear_mask_UDCCR (struct pxa_udc*,int ) ;
 int udc_writel (struct pxa_udc*,int ,int ) ;

__attribute__((used)) static void udc_disable(struct pxa_udc *udc)
{
 if (!udc->enabled)
  return;

 udc_writel(udc, UDCICR0, 0);
 udc_writel(udc, UDCICR1, 0);

 udc_clear_mask_UDCCR(udc, UDCCR_UDE);
 clk_disable(udc->clk);

 ep0_idle(udc);
 udc->gadget.speed = USB_SPEED_UNKNOWN;

 udc->enabled = 0;
}
