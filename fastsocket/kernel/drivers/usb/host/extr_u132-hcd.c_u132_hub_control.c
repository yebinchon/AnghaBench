
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_hub_descriptor {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct u132 {int going; int sw_lock; TYPE_1__* platform_dev; } ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;






 int ENODEV ;
 int EPIPE ;
 int ESHUTDOWN ;





 int dev_err (int *,char*,...) ;
 struct u132* hcd_to_u132 (struct usb_hcd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int u132_disable (struct u132*) ;
 int u132_roothub_clearportfeature (struct u132*,int,int) ;
 int u132_roothub_descriptor (struct u132*,struct usb_hub_descriptor*) ;
 int u132_roothub_portstatus (struct u132*,int *,int) ;
 int u132_roothub_setportfeature (struct u132*,int,int) ;
 int u132_roothub_status (struct u132*,int *) ;

__attribute__((used)) static int u132_hub_control(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
 u16 wIndex, char *buf, u16 wLength)
{
 struct u132 *u132 = hcd_to_u132(hcd);
 if (u132->going > 1) {
  dev_err(&u132->platform_dev->dev, "device has been removed %d\n"
   , u132->going);
  return -ENODEV;
 } else if (u132->going > 0) {
  dev_err(&u132->platform_dev->dev, "device is being removed\n");
  return -ESHUTDOWN;
 } else {
  int retval = 0;
  mutex_lock(&u132->sw_lock);
  switch (typeReq) {
  case 134:
   switch (wValue) {
   case 135:
   case 136:
    break;
   default:
    goto stall;
   }
   break;
  case 129:
   switch (wValue) {
   case 135:
   case 136:
    break;
   default:
    goto stall;
   }
   break;
  case 133:{
    retval = u132_roothub_clearportfeature(u132,
     wValue, wIndex);
    if (retval)
     goto error;
    break;
   }
  case 132:{
    retval = u132_roothub_descriptor(u132,
     (struct usb_hub_descriptor *)buf);
    if (retval)
     goto error;
    break;
   }
  case 131:{
    retval = u132_roothub_status(u132,
     (__le32 *) buf);
    if (retval)
     goto error;
    break;
   }
  case 130:{
    retval = u132_roothub_portstatus(u132,
     (__le32 *) buf, wIndex);
    if (retval)
     goto error;
    break;
   }
  case 128:{
    retval = u132_roothub_setportfeature(u132,
     wValue, wIndex);
    if (retval)
     goto error;
    break;
   }
  default:
   goto stall;
  error:
   u132_disable(u132);
   u132->going = 1;
   break;
  stall:
   retval = -EPIPE;
   break;
  }
  mutex_unlock(&u132->sw_lock);
  return retval;
 }
}
