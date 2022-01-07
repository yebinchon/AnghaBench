
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct musb {int is_self_powered; } ;


 struct musb* gadget_to_musb (struct usb_gadget*) ;

__attribute__((used)) static int
musb_gadget_set_self_powered(struct usb_gadget *gadget, int is_selfpowered)
{
 struct musb *musb = gadget_to_musb(gadget);

 musb->is_self_powered = !!is_selfpowered;
 return 0;
}
