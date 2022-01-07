
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct snd_usb_audio {int dummy; } ;


 int EIO ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct snd_usb_audio* snd_usb_audio_probe (int ,struct usb_interface*,struct usb_device_id const*) ;
 int usb_set_intfdata (struct usb_interface*,struct snd_usb_audio*) ;

__attribute__((used)) static int usb_audio_probe(struct usb_interface *intf,
      const struct usb_device_id *id)
{
 struct snd_usb_audio *chip;
 chip = snd_usb_audio_probe(interface_to_usbdev(intf), intf, id);
 if (chip) {
  usb_set_intfdata(intf, chip);
  return 0;
 } else
  return -EIO;
}
