
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {scalar_t__ shadow_power; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int sevseg_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usb_sevsegdev *mydev;

 mydev = usb_get_intfdata(intf);
 mydev->shadow_power = 0;

 return 0;
}
