
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_interface {int * audigy2nx_leds; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct usb_mixer_interface* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_audigy2nx_led_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_interface *mixer = snd_kcontrol_chip(kcontrol);
 int index = kcontrol->private_value;

 ucontrol->value.integer.value[0] = mixer->audigy2nx_leds[index];
 return 0;
}
