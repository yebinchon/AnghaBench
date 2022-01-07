
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int qe_vbus_draw(struct usb_gadget *gadget, unsigned mA)
{
 return -ENOTSUPP;
}
