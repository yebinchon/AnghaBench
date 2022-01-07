
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_udc {int transceiver; scalar_t__ vbus_sensed; scalar_t__ driver; scalar_t__ pullup_on; } ;



__attribute__((used)) static int should_enable_udc(struct pxa_udc *udc)
{
 int put_on;

 put_on = ((udc->pullup_on) && (udc->driver));
 put_on &= ((udc->vbus_sensed) || (!udc->transceiver));
 return put_on;
}
