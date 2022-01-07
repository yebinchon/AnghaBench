
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbatm_data {struct uea_softc* driver_data; } ;
struct TYPE_2__ {int kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct uea_softc {int dummy; } ;


 int attr_grp ;
 int kfree (struct uea_softc*) ;
 int sysfs_remove_group (int *,int *) ;
 int uea_stop (struct uea_softc*) ;

__attribute__((used)) static void uea_unbind(struct usbatm_data *usbatm, struct usb_interface *intf)
{
 struct uea_softc *sc = usbatm->driver_data;

 sysfs_remove_group(&intf->dev.kobj, &attr_grp);
 uea_stop(sc);
 kfree(sc);
}
