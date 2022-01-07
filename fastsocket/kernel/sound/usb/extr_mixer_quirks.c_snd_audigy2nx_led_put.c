
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_interface {int* audigy2nx_leds; TYPE_3__* chip; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {scalar_t__ usb_id; int dev; } ;


 int EINVAL ;
 int USB_DIR_OUT ;
 scalar_t__ USB_ID (int,int) ;
 int USB_RECIP_OTHER ;
 int USB_TYPE_VENDOR ;
 struct usb_mixer_interface* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_usb_ctl_msg (int ,int ,int,int,int,int,int *,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_audigy2nx_led_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_interface *mixer = snd_kcontrol_chip(kcontrol);
 int index = kcontrol->private_value;
 int value = ucontrol->value.integer.value[0];
 int err, changed;

 if (value > 1)
  return -EINVAL;
 changed = value != mixer->audigy2nx_leds[index];
 if (mixer->chip->usb_id == USB_ID(0x041e, 0x3042))
  err = snd_usb_ctl_msg(mixer->chip->dev,
         usb_sndctrlpipe(mixer->chip->dev, 0), 0x24,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
         !value, 0, ((void*)0), 0);

 if (mixer->chip->usb_id == USB_ID(0x041e, 0x30df))
  err = snd_usb_ctl_msg(mixer->chip->dev,
         usb_sndctrlpipe(mixer->chip->dev, 0), 0x24,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
         !value, 0, ((void*)0), 0);
 else
  err = snd_usb_ctl_msg(mixer->chip->dev,
         usb_sndctrlpipe(mixer->chip->dev, 0), 0x24,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
         value, index + 2, ((void*)0), 0);
 if (err < 0)
  return err;
 mixer->audigy2nx_leds[index] = value;
 return changed;
}
