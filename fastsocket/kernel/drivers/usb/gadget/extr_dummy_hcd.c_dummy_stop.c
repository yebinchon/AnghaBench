
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct dummy {int driver; } ;


 int dev_attr_urbs ;
 int dev_info (int ,char*) ;
 int device_remove_file (int ,int *) ;
 int dummy_dev (struct dummy*) ;
 struct dummy* hcd_to_dummy (struct usb_hcd*) ;
 int usb_gadget_unregister_driver (int ) ;

__attribute__((used)) static void dummy_stop (struct usb_hcd *hcd)
{
 struct dummy *dum;

 dum = hcd_to_dummy (hcd);

 device_remove_file (dummy_dev(dum), &dev_attr_urbs);
 usb_gadget_unregister_driver (dum->driver);
 dev_info (dummy_dev(dum), "stopped\n");
}
