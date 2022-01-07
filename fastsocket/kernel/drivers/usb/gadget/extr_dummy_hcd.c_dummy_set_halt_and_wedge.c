
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {int dummy; } ;
struct dummy_ep {int halted; int wedged; int queue; TYPE_1__* desc; } ;
struct dummy {int driver; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int EAGAIN ;
 int EINVAL ;
 int ESHUTDOWN ;
 int USB_DIR_IN ;
 struct dummy* ep_to_dummy (struct dummy_ep*) ;
 int list_empty (int *) ;
 struct dummy_ep* usb_ep_to_dummy_ep (struct usb_ep*) ;

__attribute__((used)) static int
dummy_set_halt_and_wedge(struct usb_ep *_ep, int value, int wedged)
{
 struct dummy_ep *ep;
 struct dummy *dum;

 if (!_ep)
  return -EINVAL;
 ep = usb_ep_to_dummy_ep (_ep);
 dum = ep_to_dummy (ep);
 if (!dum->driver)
  return -ESHUTDOWN;
 if (!value)
  ep->halted = ep->wedged = 0;
 else if (ep->desc && (ep->desc->bEndpointAddress & USB_DIR_IN) &&
   !list_empty (&ep->queue))
  return -EAGAIN;
 else {
  ep->halted = 1;
  if (wedged)
   ep->wedged = 1;
 }

 return 0;
}
