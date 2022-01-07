
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {scalar_t__ name; } ;


 int EINVAL ;
 scalar_t__ ep0name ;
 int net2280_set_halt_and_wedge (struct usb_ep*,int,int) ;

__attribute__((used)) static int
net2280_set_wedge(struct usb_ep *_ep)
{
 if (!_ep || _ep->name == ep0name)
  return -EINVAL;
 return net2280_set_halt_and_wedge(_ep, 1, 1);
}
