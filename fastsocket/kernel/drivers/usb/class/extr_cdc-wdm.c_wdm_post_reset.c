
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int plock; int flags; } ;
struct usb_interface {int dummy; } ;


 int WDM_OVERFLOW ;
 int clear_bit (int ,int *) ;
 int mutex_unlock (int *) ;
 int recover_from_urb_loss (struct wdm_device*) ;
 struct wdm_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int wdm_post_reset(struct usb_interface *intf)
{
 struct wdm_device *desc = usb_get_intfdata(intf);
 int rv;

 clear_bit(WDM_OVERFLOW, &desc->flags);
 rv = recover_from_urb_loss(desc);
 mutex_unlock(&desc->plock);
 return 0;
}
