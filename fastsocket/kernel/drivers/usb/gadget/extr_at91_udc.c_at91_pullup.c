
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct at91_udc {int enabled; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pullup (struct at91_udc*,int) ;
 struct at91_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int at91_pullup(struct usb_gadget *gadget, int is_on)
{
 struct at91_udc *udc = to_udc(gadget);
 unsigned long flags;

 local_irq_save(flags);
 udc->enabled = is_on = !!is_on;
 pullup(udc, is_on);
 local_irq_restore(flags);
 return 0;
}
