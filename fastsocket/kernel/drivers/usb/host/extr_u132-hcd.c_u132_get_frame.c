
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct u132 {int going; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int ESHUTDOWN ;
 int dev_err (int *,char*,...) ;
 struct u132* hcd_to_u132 (struct usb_hcd*) ;
 int msleep (int) ;

__attribute__((used)) static int u132_get_frame(struct usb_hcd *hcd)
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
  int frame = 0;
  dev_err(&u132->platform_dev->dev, "TODO: u132_get_frame\n");
  msleep(100);
  return frame;
 }
}
