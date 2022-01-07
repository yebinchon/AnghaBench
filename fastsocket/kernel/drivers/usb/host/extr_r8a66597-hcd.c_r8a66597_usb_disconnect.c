
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8a66597_device {int dummy; } ;
struct r8a66597 {TYPE_1__* root_hub; } ;
struct TYPE_2__ {struct r8a66597_device* dev; } ;


 int disable_r8a66597_pipe_all (struct r8a66597*,struct r8a66597_device*) ;
 int free_usb_address (struct r8a66597*,struct r8a66597_device*) ;
 int start_root_hub_sampling (struct r8a66597*,int,int ) ;

__attribute__((used)) static void r8a66597_usb_disconnect(struct r8a66597 *r8a66597, int port)
{
 struct r8a66597_device *dev = r8a66597->root_hub[port].dev;

 disable_r8a66597_pipe_all(r8a66597, dev);
 free_usb_address(r8a66597, dev);

 start_root_hub_sampling(r8a66597, port, 0);
}
