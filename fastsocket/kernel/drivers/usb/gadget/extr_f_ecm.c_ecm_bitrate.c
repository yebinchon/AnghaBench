
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {scalar_t__ speed; } ;


 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ gadget_is_dualspeed (struct usb_gadget*) ;

__attribute__((used)) static inline unsigned ecm_bitrate(struct usb_gadget *g)
{
 if (gadget_is_dualspeed(g) && g->speed == USB_SPEED_HIGH)
  return 13 * 512 * 8 * 1000 * 8;
 else
  return 19 * 64 * 1 * 1000 * 8;
}
