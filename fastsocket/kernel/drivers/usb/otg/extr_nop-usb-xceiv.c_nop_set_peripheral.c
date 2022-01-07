
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct otg_transceiver {int dummy; } ;
struct TYPE_2__ {int state; struct usb_gadget* gadget; } ;
struct nop_usb_xceiv {TYPE_1__ otg; } ;


 int ENODEV ;
 int OTG_STATE_B_IDLE ;
 struct nop_usb_xceiv* xceiv_to_nop (struct otg_transceiver*) ;

__attribute__((used)) static int nop_set_peripheral(struct otg_transceiver *x,
  struct usb_gadget *gadget)
{
 struct nop_usb_xceiv *nop;

 if (!x)
  return -ENODEV;

 nop = xceiv_to_nop(x);

 if (!gadget) {
  nop->otg.gadget = ((void*)0);
  return -ENODEV;
 }

 nop->otg.gadget = gadget;
 nop->otg.state = OTG_STATE_B_IDLE;
 return 0;
}
