
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {int numOfInBuffers; TYPE_1__* interface; scalar_t__* urbIn; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int,int) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static int usbduxsub_unlink_InURBs(struct usbduxsub *usbduxsub_tmp)
{
 int i = 0;
 int err = 0;

 if (usbduxsub_tmp && usbduxsub_tmp->urbIn) {
  for (i = 0; i < usbduxsub_tmp->numOfInBuffers; i++) {
   if (usbduxsub_tmp->urbIn[i]) {


    usb_kill_urb(usbduxsub_tmp->urbIn[i]);
   }
   dev_dbg(&usbduxsub_tmp->interface->dev,
    "comedi: usbdux: unlinked InURB %d, err=%d\n",
    i, err);
  }
 }
 return err;
}
