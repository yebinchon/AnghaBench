
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_ep {unsigned int maxpacket; int name; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; int bmAttributes; int bEndpointAddress; int wMaxPacketSize; } ;
struct TYPE_3__ {int name; } ;
struct dummy_ep {scalar_t__ wedged; scalar_t__ halted; struct usb_endpoint_descriptor const* desc; TYPE_1__ ep; } ;
struct TYPE_4__ {int speed; } ;
struct dummy {TYPE_2__ gadget; int driver; } ;


 int EINVAL ;
 int ESHUTDOWN ;
 int USB_DIR_IN ;
 scalar_t__ USB_DT_ENDPOINT ;





 int dev_dbg (int ,char*,int ,int,char*,int ,unsigned int) ;
 int ep0name ;
 struct dummy* ep_to_dummy (struct dummy_ep*) ;
 int is_enabled (struct dummy*) ;
 int le16_to_cpu (int ) ;
 int strstr (int ,char*) ;
 int udc_dev (struct dummy*) ;
 struct dummy_ep* usb_ep_to_dummy_ep (struct usb_ep*) ;

__attribute__((used)) static int
dummy_enable (struct usb_ep *_ep, const struct usb_endpoint_descriptor *desc)
{
 struct dummy *dum;
 struct dummy_ep *ep;
 unsigned max;
 int retval;

 ep = usb_ep_to_dummy_ep (_ep);
 if (!_ep || !desc || ep->desc || _ep->name == ep0name
   || desc->bDescriptorType != USB_DT_ENDPOINT)
  return -EINVAL;
 dum = ep_to_dummy (ep);
 if (!dum->driver || !is_enabled (dum))
  return -ESHUTDOWN;
 max = le16_to_cpu(desc->wMaxPacketSize) & 0x3ff;
 retval = -EINVAL;
 switch (desc->bmAttributes & 0x03) {
 case 132:
  if (strstr (ep->ep.name, "-iso")
    || strstr (ep->ep.name, "-int")) {
   goto done;
  }
  switch (dum->gadget.speed) {
  case 128:
   if (max == 512)
    break;
   goto done;
  case 129:
   if (max == 8 || max == 16 || max == 32 || max == 64)

    break;

  default:
   goto done;
  }
  break;
 case 131:
  if (strstr (ep->ep.name, "-iso"))
   goto done;

  switch (dum->gadget.speed) {
  case 128:
   if (max <= 1024)
    break;

  case 129:
   if (max <= 64)
    break;

  default:
   if (max <= 8)
    break;
   goto done;
  }
  break;
 case 130:
  if (strstr (ep->ep.name, "-bulk")
    || strstr (ep->ep.name, "-int"))
   goto done;

  switch (dum->gadget.speed) {
  case 128:
   if (max <= 1024)
    break;

  case 129:
   if (max <= 1023)
    break;

  default:
   goto done;
  }
  break;
 default:

  goto done;
 }

 _ep->maxpacket = max;
 ep->desc = desc;

 dev_dbg (udc_dev(dum), "enabled %s (ep%d%s-%s) maxpacket %d\n",
  _ep->name,
  desc->bEndpointAddress & 0x0f,
  (desc->bEndpointAddress & USB_DIR_IN) ? "in" : "out",
  ({ char *val;
   switch (desc->bmAttributes & 0x03) {
   case 132: val = "bulk"; break;
   case 130: val = "iso"; break;
   case 131: val = "intr"; break;
   default: val = "ctrl"; break;
   }; val; }),
  max);




 ep->halted = ep->wedged = 0;
 retval = 0;
done:
 return retval;
}
