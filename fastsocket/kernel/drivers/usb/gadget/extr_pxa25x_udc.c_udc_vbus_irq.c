
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa25x_udc {int gadget; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int is_vbus_present () ;
 int pxa25x_udc_vbus_session (int *,int ) ;

__attribute__((used)) static irqreturn_t udc_vbus_irq(int irq, void *_dev)
{
 struct pxa25x_udc *dev = _dev;

 pxa25x_udc_vbus_session(&dev->gadget, is_vbus_present());
 return IRQ_HANDLED;
}
