
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int rc_urb; int urb; } ;


 int usb_kill_urb (int ) ;

void snd_usb_mixer_inactivate(struct usb_mixer_interface *mixer)
{
 usb_kill_urb(mixer->urb);
 usb_kill_urb(mixer->rc_urb);
}
