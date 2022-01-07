
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio_quirk {int dummy; } ;
struct snd_usb_audio {int dummy; } ;



__attribute__((used)) static int ignore_interface_quirk(struct snd_usb_audio *chip,
      struct usb_interface *iface,
      struct usb_driver *driver,
      const struct snd_usb_audio_quirk *quirk)
{
 return 0;
}
