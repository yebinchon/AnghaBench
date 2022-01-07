
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct echoaudio {int digital_mode; int num_digital_modes; int* digital_mode_list; } ;


 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_echo_digital_mode_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip;
 int i, mode;

 chip = snd_kcontrol_chip(kcontrol);
 mode = chip->digital_mode;
 for (i = chip->num_digital_modes - 1; i >= 0; i--)
  if (mode == chip->digital_mode_list[i]) {
   ucontrol->value.enumerated.item[0] = i;
   break;
  }
 return 0;
}
