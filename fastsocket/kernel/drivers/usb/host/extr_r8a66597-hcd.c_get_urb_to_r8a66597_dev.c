
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* dev; int pipe; } ;
struct r8a66597_device {int dummy; } ;
struct r8a66597 {struct r8a66597_device device0; } ;
struct TYPE_2__ {int dev; } ;


 struct r8a66597_device* dev_get_drvdata (int *) ;
 scalar_t__ usb_pipedevice (int ) ;

__attribute__((used)) static struct r8a66597_device *
get_urb_to_r8a66597_dev(struct r8a66597 *r8a66597, struct urb *urb)
{
 if (usb_pipedevice(urb->pipe) == 0)
  return &r8a66597->device0;

 return dev_get_drvdata(&urb->dev->dev);
}
