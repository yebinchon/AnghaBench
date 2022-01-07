
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {int bInterfaceProtocol; } ;
struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int dummy; } ;
struct audioformat {int dummy; } ;




 struct usb_interface_descriptor* get_iface_desc (struct usb_host_interface*) ;
 int set_sample_rate_v1 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*,int) ;
 int set_sample_rate_v2 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*,int) ;

int snd_usb_init_sample_rate(struct snd_usb_audio *chip, int iface,
        struct usb_host_interface *alts,
        struct audioformat *fmt, int rate)
{
 struct usb_interface_descriptor *altsd = get_iface_desc(alts);

 switch (altsd->bInterfaceProtocol) {
 case 129:
 default:
  return set_sample_rate_v1(chip, iface, alts, fmt, rate);

 case 128:
  return set_sample_rate_v2(chip, iface, alts, fmt, rate);
 }
}
