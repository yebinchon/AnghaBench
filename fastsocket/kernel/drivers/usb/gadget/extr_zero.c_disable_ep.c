
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int * driver_data; int name; } ;
struct usb_composite_dev {int dummy; } ;


 int DBG (struct usb_composite_dev*,char*,int ,int) ;
 int usb_ep_disable (struct usb_ep*) ;

__attribute__((used)) static void disable_ep(struct usb_composite_dev *cdev, struct usb_ep *ep)
{
 int value;

 if (ep->driver_data) {
  value = usb_ep_disable(ep);
  if (value < 0)
   DBG(cdev, "disable %s --> %d\n",
     ep->name, value);
  ep->driver_data = ((void*)0);
 }
}
