
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {int bInterfaceProtocol; } ;
struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int dummy; } ;
struct audioformat {int attributes; } ;


 int UAC_EP_CS_ATTR_PITCH_CONTROL ;


 struct usb_interface_descriptor* get_iface_desc (struct usb_host_interface*) ;
 int init_pitch_v1 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*) ;
 int init_pitch_v2 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*) ;

int snd_usb_init_pitch(struct snd_usb_audio *chip, int iface,
         struct usb_host_interface *alts,
         struct audioformat *fmt)
{
 struct usb_interface_descriptor *altsd = get_iface_desc(alts);


 if (!(fmt->attributes & UAC_EP_CS_ATTR_PITCH_CONTROL))
  return 0;

 switch (altsd->bInterfaceProtocol) {
 case 129:
 default:
  return init_pitch_v1(chip, iface, alts, fmt);

 case 128:
  return init_pitch_v2(chip, iface, alts, fmt);
 }
}
