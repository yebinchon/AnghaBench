
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_caiaqdev {int* control_state; } ;
struct snd_usb_audio {int card; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int CNT_INTVAL ;
 struct snd_usb_caiaqdev* caiaqdev (int ) ;
 struct snd_usb_audio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int control_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_usb_audio *chip = snd_kcontrol_chip(kcontrol);
 struct snd_usb_caiaqdev *dev = caiaqdev(chip->card);
 int pos = kcontrol->private_value;

 if (pos & CNT_INTVAL)
  ucontrol->value.integer.value[0]
   = dev->control_state[pos & ~CNT_INTVAL];
 else
  ucontrol->value.integer.value[0]
   = !!(dev->control_state[pos / 8] & (1 << pos % 8));

 return 0;
}
