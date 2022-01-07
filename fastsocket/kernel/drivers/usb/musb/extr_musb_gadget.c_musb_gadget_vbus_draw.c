
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct musb {TYPE_1__* xceiv; } ;
struct TYPE_2__ {int set_power; } ;


 int EOPNOTSUPP ;
 struct musb* gadget_to_musb (struct usb_gadget*) ;
 int otg_set_power (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int musb_gadget_vbus_draw(struct usb_gadget *gadget, unsigned mA)
{
 struct musb *musb = gadget_to_musb(gadget);

 if (!musb->xceiv->set_power)
  return -EOPNOTSUPP;
 return otg_set_power(musb->xceiv, mA);
}
