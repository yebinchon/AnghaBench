
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {TYPE_1__* interface; scalar_t__ urbPwm; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static int usbduxsub_unlink_PwmURBs(struct usbduxsub *usbduxsub_tmp)
{
 int err = 0;

 if (usbduxsub_tmp && usbduxsub_tmp->urbPwm) {
  if (usbduxsub_tmp->urbPwm)
   usb_kill_urb(usbduxsub_tmp->urbPwm);
  dev_dbg(&usbduxsub_tmp->interface->dev,
   "comedi: unlinked PwmURB: res=%d\n", err);
 }
 return err;
}
