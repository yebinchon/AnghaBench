
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_sevsegdev {int textmode; int mode_msb; int mode_lsb; int udev; struct usb_interface* intf; } ;
struct TYPE_3__ {int kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_grp ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_sevsegdev*) ;
 struct usb_sevsegdev* kzalloc (int,int ) ;
 int sysfs_create_group (int *,int *) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_sevsegdev*) ;

__attribute__((used)) static int sevseg_probe(struct usb_interface *interface,
 const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_sevsegdev *mydev = ((void*)0);
 int rc = -ENOMEM;

 mydev = kzalloc(sizeof(struct usb_sevsegdev), GFP_KERNEL);
 if (mydev == ((void*)0)) {
  dev_err(&interface->dev, "Out of memory\n");
  goto error_mem;
 }

 mydev->udev = usb_get_dev(udev);
 mydev->intf = interface;
 usb_set_intfdata(interface, mydev);


 mydev->textmode = 0x02;
 mydev->mode_msb = 0x06;
 mydev->mode_lsb = 0x3f;

 rc = sysfs_create_group(&interface->dev.kobj, &dev_attr_grp);
 if (rc)
  goto error;

 dev_info(&interface->dev, "USB 7 Segment device now attached\n");
 return 0;

error:
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(mydev->udev);
 kfree(mydev);
error_mem:
 return rc;
}
