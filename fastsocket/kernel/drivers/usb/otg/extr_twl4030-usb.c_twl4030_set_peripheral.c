
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int state; struct usb_gadget* gadget; } ;
struct twl4030_usb {TYPE_1__ otg; } ;
struct otg_transceiver {int dummy; } ;


 int ENODEV ;
 int OTG_STATE_UNDEFINED ;
 struct twl4030_usb* xceiv_to_twl (struct otg_transceiver*) ;

__attribute__((used)) static int twl4030_set_peripheral(struct otg_transceiver *x,
  struct usb_gadget *gadget)
{
 struct twl4030_usb *twl;

 if (!x)
  return -ENODEV;

 twl = xceiv_to_twl(x);
 twl->otg.gadget = gadget;
 if (!gadget)
  twl->otg.state = OTG_STATE_UNDEFINED;

 return 0;
}
