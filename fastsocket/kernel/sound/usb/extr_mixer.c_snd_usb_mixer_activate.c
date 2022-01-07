
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {scalar_t__ urb; } ;


 int GFP_NOIO ;
 int usb_submit_urb (scalar_t__,int ) ;

int snd_usb_mixer_activate(struct usb_mixer_interface *mixer)
{
 int err;

 if (mixer->urb) {
  err = usb_submit_urb(mixer->urb, GFP_NOIO);
  if (err < 0)
   return err;
 }

 return 0;
}
