
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_sevsegdev {int udev; } ;
struct TYPE_2__ {int kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;


 int dev_attr_grp ;
 int dev_info (TYPE_1__*,char*) ;
 int kfree (struct usb_sevsegdev*) ;
 int sysfs_remove_group (int *,int *) ;
 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void sevseg_disconnect(struct usb_interface *interface)
{
 struct usb_sevsegdev *mydev;

 mydev = usb_get_intfdata(interface);
 sysfs_remove_group(&interface->dev.kobj, &dev_attr_grp);
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(mydev->udev);
 kfree(mydev);
 dev_info(&interface->dev, "USB 7 Segment now disconnected\n");
}
