
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8a66597_device {unsigned short ep_in_toggle; unsigned short ep_out_toggle; } ;


 scalar_t__ usb_pipein (int) ;

__attribute__((used)) static unsigned short *get_toggle_pointer(struct r8a66597_device *dev,
       int urb_pipe)
{
 if (!dev)
  return ((void*)0);

 return usb_pipein(urb_pipe) ? &dev->ep_in_toggle : &dev->ep_out_toggle;
}
