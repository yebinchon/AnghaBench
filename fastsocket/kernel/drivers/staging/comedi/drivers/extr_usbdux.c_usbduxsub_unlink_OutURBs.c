
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {int numOfOutBuffers; TYPE_1__* interface; scalar_t__* urbOut; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int,int) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static int usbduxsub_unlink_OutURBs(struct usbduxsub *usbduxsub_tmp)
{
 int i = 0;
 int err = 0;

 if (usbduxsub_tmp && usbduxsub_tmp->urbOut) {
  for (i = 0; i < usbduxsub_tmp->numOfOutBuffers; i++) {
   if (usbduxsub_tmp->urbOut[i])
    usb_kill_urb(usbduxsub_tmp->urbOut[i]);

   dev_dbg(&usbduxsub_tmp->interface->dev,
    "comedi: usbdux: unlinked OutURB %d: res=%d\n",
    i, err);
  }
 }
 return err;
}
