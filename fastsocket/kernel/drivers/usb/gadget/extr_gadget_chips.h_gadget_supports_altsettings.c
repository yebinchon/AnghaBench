
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 scalar_t__ gadget_is_pxa (struct usb_gadget*) ;
 scalar_t__ gadget_is_pxa27x (struct usb_gadget*) ;
 scalar_t__ gadget_is_sh (struct usb_gadget*) ;

__attribute__((used)) static inline bool gadget_supports_altsettings(struct usb_gadget *gadget)
{

 if (gadget_is_pxa(gadget))
  return 0;


 if (gadget_is_pxa27x(gadget))
  return 0;


 if (gadget_is_sh(gadget))
  return 0;


 return 1;
}
