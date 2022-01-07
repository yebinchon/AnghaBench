
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int command; int response; int validity; } ;


 int usb_free_urb (int ) ;

__attribute__((used)) static void free_urbs(struct wdm_device *desc)
{
 usb_free_urb(desc->validity);
 usb_free_urb(desc->response);
 usb_free_urb(desc->command);
}
