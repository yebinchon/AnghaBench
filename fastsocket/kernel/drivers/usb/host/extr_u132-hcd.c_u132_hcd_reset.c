
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct u132 {int going; int sw_lock; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int ESHUTDOWN ;
 int dev_err (int *,char*,...) ;
 struct u132* hcd_to_u132 (struct usb_hcd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int u132_disable (struct u132*) ;
 int u132_init (struct u132*) ;

__attribute__((used)) static int u132_hcd_reset(struct usb_hcd *hcd)
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
  int retval;
  mutex_lock(&u132->sw_lock);
  retval = u132_init(u132);
  if (retval) {
   u132_disable(u132);
   u132->going = 1;
  }
  mutex_unlock(&u132->sw_lock);
  return retval;
 }
}
