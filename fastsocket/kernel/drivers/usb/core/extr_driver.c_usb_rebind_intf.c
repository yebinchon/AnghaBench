
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_6__ {TYPE_1__ power; int driver; } ;
struct usb_interface {TYPE_2__ dev; scalar_t__ needs_binding; } ;
struct usb_driver {int dummy; } ;


 scalar_t__ DPM_ON ;
 int dev_dbg (TYPE_2__*,char*) ;
 int dev_warn (TYPE_2__*,char*,int) ;
 int device_attach (TYPE_2__*) ;
 struct usb_driver* to_usb_driver (int ) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;

void usb_rebind_intf(struct usb_interface *intf)
{
 int rc;


 if (intf->dev.driver) {
  struct usb_driver *driver =
    to_usb_driver(intf->dev.driver);

  dev_dbg(&intf->dev, "forced unbind\n");
  usb_driver_release_interface(driver, intf);
 }


 if (intf->dev.power.status == DPM_ON) {
  intf->needs_binding = 0;
  rc = device_attach(&intf->dev);
  if (rc < 0)
   dev_warn(&intf->dev, "rebind failed: %d\n", rc);
 }
}
