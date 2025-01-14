
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int speed; } ;
struct at91_udc {int suspended; struct at91_ep* ep; TYPE_2__ gadget; TYPE_1__* driver; scalar_t__ addr; } ;
struct at91_ep {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* resume ) (TYPE_2__*) ;int (* suspend ) (TYPE_2__*) ;} ;


 int AT91_UDP_CSR (int ) ;
 int AT91_UDP_ENDBUSRES ;
 int AT91_UDP_EP (int ) ;
 int AT91_UDP_EPEDS ;
 int AT91_UDP_EPTYPE_CTRL ;
 int AT91_UDP_ICR ;
 int AT91_UDP_IDR ;
 int AT91_UDP_IER ;
 int AT91_UDP_IMR ;
 int AT91_UDP_ISR ;
 int AT91_UDP_RXRSM ;
 int AT91_UDP_RXSUSP ;
 int IRQ_HANDLED ;
 int MINIMUS_INTERRUPTUS ;
 int NUM_ENDPOINTS ;
 int USB_SPEED_FULL ;
 int VDBG (char*) ;
 int at91_udp_read (struct at91_udc*,int ) ;
 int at91_udp_write (struct at91_udc*,int ,int) ;
 int handle_ep (struct at91_ep*) ;
 int handle_ep0 (struct at91_udc*) ;
 int stop_activity (struct at91_udc*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t at91_udc_irq (int irq, void *_udc)
{
 struct at91_udc *udc = _udc;
 u32 rescans = 5;

 while (rescans--) {
  u32 status;

  status = at91_udp_read(udc, AT91_UDP_ISR)
   & at91_udp_read(udc, AT91_UDP_IMR);
  if (!status)
   break;


  if (status & AT91_UDP_ENDBUSRES) {
   at91_udp_write(udc, AT91_UDP_IDR, ~MINIMUS_INTERRUPTUS);
   at91_udp_write(udc, AT91_UDP_IER, MINIMUS_INTERRUPTUS);

   at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_ENDBUSRES);
   at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_ENDBUSRES);
   VDBG("end bus reset\n");
   udc->addr = 0;
   stop_activity(udc);


   at91_udp_write(udc, AT91_UDP_CSR(0),
     AT91_UDP_EPEDS | AT91_UDP_EPTYPE_CTRL);
   udc->gadget.speed = USB_SPEED_FULL;
   udc->suspended = 0;
   at91_udp_write(udc, AT91_UDP_IER, AT91_UDP_EP(0));
  } else if (status & AT91_UDP_RXSUSP) {
   at91_udp_write(udc, AT91_UDP_IDR, AT91_UDP_RXSUSP);
   at91_udp_write(udc, AT91_UDP_IER, AT91_UDP_RXRSM);
   at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_RXSUSP);

   if (udc->suspended)
    continue;
   udc->suspended = 1;







   if (udc->driver && udc->driver->suspend)
    udc->driver->suspend(&udc->gadget);


  } else if (status & AT91_UDP_RXRSM) {
   at91_udp_write(udc, AT91_UDP_IDR, AT91_UDP_RXRSM);
   at91_udp_write(udc, AT91_UDP_IER, AT91_UDP_RXSUSP);
   at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_RXRSM);

   if (!udc->suspended)
    continue;
   udc->suspended = 0;






   if (udc->driver && udc->driver->resume)
    udc->driver->resume(&udc->gadget);


  } else {
   int i;
   unsigned mask = 1;
   struct at91_ep *ep = &udc->ep[1];

   if (status & mask)
    handle_ep0(udc);
   for (i = 1; i < NUM_ENDPOINTS; i++) {
    mask <<= 1;
    if (status & mask)
     handle_ep(ep);
    ep++;
   }
  }
 }

 return IRQ_HANDLED;
}
