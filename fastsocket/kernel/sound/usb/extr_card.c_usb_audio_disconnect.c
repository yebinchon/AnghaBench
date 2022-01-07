
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int interface_to_usbdev (struct usb_interface*) ;
 int snd_usb_audio_disconnect (int ,int ) ;
 int usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void usb_audio_disconnect(struct usb_interface *intf)
{
 snd_usb_audio_disconnect(interface_to_usbdev(intf),
     usb_get_intfdata(intf));
}
