
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int irqs; } ;
struct TYPE_6__ {scalar_t__ speed; } ;
struct pxa25x_udc {TYPE_5__* ep; TYPE_4__ stats; TYPE_1__ gadget; TYPE_3__* driver; } ;
typedef int irqreturn_t ;
struct TYPE_9__ {int pio_irqs; } ;
struct TYPE_7__ {int (* resume ) (TYPE_1__*) ;int (* suspend ) (TYPE_1__*) ;} ;


 int DBG (int ,char*,...) ;
 int DBG_VERBOSE ;
 int DBG_VERY_NOISY ;
 int IRQ_HANDLED ;
 int UDCCR ;
 int UDCCR_RESIR ;
 int UDCCR_RSTIR ;
 int UDCCR_SUSIR ;
 int UDCCR_UDA ;
 int UICR0 ;
 int UICR1 ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int USIR0 ;
 int USIR0_IR0 ;
 int USIR1 ;
 int ep0_idle (struct pxa25x_udc*) ;
 int handle_ep (TYPE_5__*) ;
 int handle_ep0 (struct pxa25x_udc*) ;
 scalar_t__ is_vbus_present () ;
 int memset (TYPE_4__*,int ,int) ;
 int stop_activity (struct pxa25x_udc*,TYPE_3__*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int udc_ack_int_UDCCR (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
pxa25x_udc_irq(int irq, void *_dev)
{
 struct pxa25x_udc *dev = _dev;
 int handled;

 dev->stats.irqs++;
 do {
  u32 udccr = UDCCR;

  handled = 0;


  if (unlikely(udccr & UDCCR_SUSIR)) {
   udc_ack_int_UDCCR(UDCCR_SUSIR);
   handled = 1;
   DBG(DBG_VERBOSE, "USB suspend%s\n", is_vbus_present()
    ? "" : "+disconnect");

   if (!is_vbus_present())
    stop_activity(dev, dev->driver);
   else if (dev->gadget.speed != USB_SPEED_UNKNOWN
     && dev->driver
     && dev->driver->suspend)
    dev->driver->suspend(&dev->gadget);
   ep0_idle (dev);
  }


  if (unlikely(udccr & UDCCR_RESIR)) {
   udc_ack_int_UDCCR(UDCCR_RESIR);
   handled = 1;
   DBG(DBG_VERBOSE, "USB resume\n");

   if (dev->gadget.speed != USB_SPEED_UNKNOWN
     && dev->driver
     && dev->driver->resume
     && is_vbus_present())
    dev->driver->resume(&dev->gadget);
  }


  if (unlikely(udccr & UDCCR_RSTIR)) {
   udc_ack_int_UDCCR(UDCCR_RSTIR);
   handled = 1;

   if ((UDCCR & UDCCR_UDA) == 0) {
    DBG(DBG_VERBOSE, "USB reset start\n");




    stop_activity (dev, dev->driver);

   } else {
    DBG(DBG_VERBOSE, "USB reset end\n");
    dev->gadget.speed = USB_SPEED_FULL;
    memset(&dev->stats, 0, sizeof dev->stats);

   }

  } else {
   u32 usir0 = USIR0 & ~UICR0;
   u32 usir1 = USIR1 & ~UICR1;
   int i;

   if (unlikely (!usir0 && !usir1))
    continue;

   DBG(DBG_VERY_NOISY, "irq %02x.%02x\n", usir1, usir0);


   if (usir0 & USIR0_IR0) {
    dev->ep[0].pio_irqs++;
    handle_ep0(dev);
    handled = 1;
   }


   for (i = 0; i < 8; i++) {
    u32 tmp = 1 << i;

    if (i && (usir0 & tmp)) {
     handle_ep(&dev->ep[i]);
     USIR0 |= tmp;
     handled = 1;
    }

    if (usir1 & tmp) {
     handle_ep(&dev->ep[i+8]);
     USIR1 |= tmp;
     handled = 1;
    }

   }
  }



 } while (handled);
 return IRQ_HANDLED;
}
