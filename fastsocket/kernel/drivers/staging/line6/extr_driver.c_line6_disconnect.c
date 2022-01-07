
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_line6 {TYPE_4__* properties; struct usb_device* usbdev; int ifcdev; int * urb_listen; } ;
struct TYPE_10__ {int kobj; } ;
struct usb_interface {TYPE_5__ dev; TYPE_2__* cur_altsetting; } ;
struct TYPE_8__ {int idProduct; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_6__ {int bInterfaceNumber; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;
 int LINE6_MAX_DEVICES ;
 int MISSING_CASE ;


 int dev_err (int ,char*) ;
 int dev_info (TYPE_5__*,char*,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int line6_destruct (struct usb_interface*) ;
 struct usb_line6** line6_devices ;
 int line6_list_devices () ;
 int pod_disconnect (struct usb_interface*) ;
 int sysfs_remove_link (int *,char*) ;
 int toneport_disconnect (struct usb_interface*) ;
 struct usb_line6* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int *) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_put_intf (struct usb_interface*) ;
 int variax_disconnect (struct usb_interface*) ;

__attribute__((used)) static void line6_disconnect(struct usb_interface *interface)
{
 struct usb_line6 *line6;
 struct usb_device *usbdev;
 int interface_number, i;

 if (interface == ((void*)0))
  return;
 usbdev = interface_to_usbdev(interface);
 if (usbdev == ((void*)0))
  return;

 sysfs_remove_link(&interface->dev.kobj, "usb_device");

 interface_number = interface->cur_altsetting->desc.bInterfaceNumber;
 line6 = usb_get_intfdata(interface);

 if (line6 != ((void*)0)) {
  if (line6->urb_listen != ((void*)0))
   usb_kill_urb(line6->urb_listen);

  if (usbdev != line6->usbdev)
   dev_err(line6->ifcdev,
    "driver bug: inconsistent usb device\n");

  switch (line6->usbdev->descriptor.idProduct) {
  case 143:
  case 142:
  case 141:
  case 139:
  case 138:
  case 137:
  case 136:
  case 134:
   pod_disconnect(interface);
   break;

  case 135:
   switch (interface_number) {
   case 129:
    pod_disconnect(interface);
    break;

   case 128:
    variax_disconnect(interface);
    break;
   }

   break;

  case 130:
   variax_disconnect(interface);
   break;

  case 133:
  case 132:
  case 131:
  case 140:
   toneport_disconnect(interface);
   break;

  default:
   MISSING_CASE;
  }

  dev_info(&interface->dev, "Line6 %s now disconnected\n", line6->properties->name);

  for (i = LINE6_MAX_DEVICES; i--;)
   if (line6_devices[i] == line6)
    line6_devices[i] = ((void*)0);
 }

 line6_destruct(interface);


 usb_put_intf(interface);
 usb_put_dev(usbdev);

 line6_list_devices();
}
