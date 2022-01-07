
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct r8a66597_device {int state; } ;
struct r8a66597 {int dummy; } ;


 int USB_STATE_CONFIGURED ;
 struct r8a66597_device* get_urb_to_r8a66597_dev (struct r8a66597*,struct urb*) ;

__attribute__((used)) static void init_pipe_config(struct r8a66597 *r8a66597, struct urb *urb)
{
 struct r8a66597_device *dev;

 dev = get_urb_to_r8a66597_dev(r8a66597, urb);
 dev->state = USB_STATE_CONFIGURED;
}
