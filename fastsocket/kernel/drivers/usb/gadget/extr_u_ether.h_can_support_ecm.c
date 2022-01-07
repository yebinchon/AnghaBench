
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 scalar_t__ gadget_is_sa1100 (struct usb_gadget*) ;
 int gadget_supports_altsettings (struct usb_gadget*) ;

__attribute__((used)) static inline bool can_support_ecm(struct usb_gadget *gadget)
{
 if (!gadget_supports_altsettings(gadget))
  return 0;





 if (gadget_is_sa1100(gadget))
  return 0;





 return 1;
}
