
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_udc {scalar_t__ transceiver; int vbus_sensed; int driver; int pullup_on; } ;



__attribute__((used)) static int should_disable_udc(struct pxa_udc *udc)
{
 int put_off;

 put_off = ((!udc->pullup_on) || (!udc->driver));
 put_off |= ((!udc->vbus_sensed) && (udc->transceiver));
 return put_off;
}
