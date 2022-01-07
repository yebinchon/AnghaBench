
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct stub_device {int ud; } ;


 int SDEV_EVENT_REMOVED ;
 int err (char*) ;
 int stub_device_free (struct stub_device*) ;
 int stub_remove_files (int *) ;
 struct stub_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usbip_event_add (int *,int ) ;
 int usbip_stop_eh (int *) ;
 int usbip_udbg (char*) ;

__attribute__((used)) static void stub_disconnect(struct usb_interface *interface)
{
 struct stub_device *sdev = usb_get_intfdata(interface);

 usbip_udbg("Enter\n");


 if (!sdev) {
  err(" could not get device from inteface data");

  return;
 }

 usb_set_intfdata(interface, ((void*)0));






 stub_remove_files(&interface->dev);


 usbip_event_add(&sdev->ud, SDEV_EVENT_REMOVED);


 usbip_stop_eh(&sdev->ud);


 stub_device_free(sdev);


 usbip_udbg("bye\n");
}
