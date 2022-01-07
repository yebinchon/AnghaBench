
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

__attribute__((used)) static int u132_start_port_reset(struct usb_hcd *hcd, unsigned port_num)
{
 struct u132 *u132 = hcd_to_u132(hcd);
 if (u132->going > 1) {
  dev_err(&u132->platform_dev->dev, "device has been removed %d\n"
   , u132->going);
  return -ENODEV;
 } else if (u132->going > 0) {
  dev_err(&u132->platform_dev->dev, "device is being removed\n");
  return -ESHUTDOWN;
 } else
  return 0;
}
