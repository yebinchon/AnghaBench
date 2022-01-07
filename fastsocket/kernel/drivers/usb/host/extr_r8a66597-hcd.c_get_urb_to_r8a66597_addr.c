
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct urb {int pipe; } ;
struct r8a66597_device {int address; } ;
struct r8a66597 {int dummy; } ;


 struct r8a66597_device* get_urb_to_r8a66597_dev (struct r8a66597*,struct urb*) ;
 scalar_t__ usb_pipedevice (int ) ;

__attribute__((used)) static u16 get_urb_to_r8a66597_addr(struct r8a66597 *r8a66597, struct urb *urb)
{
 struct r8a66597_device *dev = get_urb_to_r8a66597_dev(r8a66597, urb);

 return (usb_pipedevice(urb->pipe) == 0) ? 0 : dev->address;
}
