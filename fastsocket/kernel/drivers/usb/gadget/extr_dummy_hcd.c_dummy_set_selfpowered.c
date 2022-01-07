
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct dummy {int devstatus; } ;


 int USB_DEVICE_SELF_POWERED ;
 struct dummy* gadget_to_dummy (struct usb_gadget*) ;

__attribute__((used)) static int dummy_set_selfpowered (struct usb_gadget *_gadget, int value)
{
 struct dummy *dum;

 dum = gadget_to_dummy (_gadget);
 if (value)
  dum->devstatus |= (1 << USB_DEVICE_SELF_POWERED);
 else
  dum->devstatus &= ~(1 << USB_DEVICE_SELF_POWERED);
 return 0;
}
