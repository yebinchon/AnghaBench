
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int plock; } ;
struct usb_interface {int dummy; } ;


 int mutex_lock (int *) ;
 struct wdm_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int wdm_pre_reset(struct usb_interface *intf)
{
 struct wdm_device *desc = usb_get_intfdata(intf);

 mutex_lock(&desc->plock);
 return 0;
}
