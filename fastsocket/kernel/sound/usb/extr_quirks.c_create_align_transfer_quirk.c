
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio_quirk {int dummy; } ;
struct snd_usb_audio {int txfr_quirk; } ;



__attribute__((used)) static int create_align_transfer_quirk(struct snd_usb_audio *chip,
           struct usb_interface *iface,
           struct usb_driver *driver,
           const struct snd_usb_audio_quirk *quirk)
{
 chip->txfr_quirk = 1;
 return 1;
}
