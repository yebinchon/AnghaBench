
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int minor; } ;
struct usb_ftdi {int disconnected; TYPE_1__* udev; scalar_t__ registered; scalar_t__ initialized; scalar_t__ enumerated; scalar_t__ synchronized; int platform_dev; struct usb_class_driver* class; } ;
struct usb_class_driver {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int command_queue ;
 int dev_info (int *,char*,...) ;
 int flush_workqueue (int ) ;
 int ftdi_command_cancel_work (struct usb_ftdi*) ;
 int ftdi_elan_abandon_completions (struct usb_ftdi*) ;
 int ftdi_elan_abandon_targets (struct usb_ftdi*) ;
 int ftdi_elan_put_kref (struct usb_ftdi*) ;
 int ftdi_response_cancel_work (struct usb_ftdi*) ;
 int ftdi_status_cancel_work (struct usb_ftdi*) ;
 int platform_device_unregister (int *) ;
 int respond_queue ;
 int status_queue ;
 int usb_deregister_dev (struct usb_interface*,struct usb_class_driver*) ;
 struct usb_ftdi* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ftdi_elan_disconnect(struct usb_interface *interface)
{
        struct usb_ftdi *ftdi = usb_get_intfdata(interface);
        ftdi->disconnected += 1;
        if (ftdi->class) {
                int minor = interface->minor;
                struct usb_class_driver *class = ftdi->class;
                usb_set_intfdata(interface, ((void*)0));
                usb_deregister_dev(interface, class);
                dev_info(&ftdi->udev->dev, "USB FTDI U132 jtag interface on min"
                        "or %d now disconnected\n", minor);
        } else {
                ftdi_status_cancel_work(ftdi);
                ftdi_command_cancel_work(ftdi);
                ftdi_response_cancel_work(ftdi);
                ftdi_elan_abandon_completions(ftdi);
                ftdi_elan_abandon_targets(ftdi);
                if (ftdi->registered) {
                        platform_device_unregister(&ftdi->platform_dev);
                        ftdi->synchronized = 0;
                        ftdi->enumerated = 0;
                        ftdi->initialized = 0;
                        ftdi->registered = 0;
                }
                flush_workqueue(status_queue);
                flush_workqueue(command_queue);
                flush_workqueue(respond_queue);
                ftdi->disconnected += 1;
                usb_set_intfdata(interface, ((void*)0));
                dev_info(&ftdi->udev->dev, "USB FTDI U132 host controller inter"
                        "face now disconnected\n");
        }
        ftdi_elan_put_kref(ftdi);
}
