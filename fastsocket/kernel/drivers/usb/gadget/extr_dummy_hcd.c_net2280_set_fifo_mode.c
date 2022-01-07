
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int ENOSYS ;

int net2280_set_fifo_mode (struct usb_gadget *gadget, int mode)
{
 return -ENOSYS;
}
