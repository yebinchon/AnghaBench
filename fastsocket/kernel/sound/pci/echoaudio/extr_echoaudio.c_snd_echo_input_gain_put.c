
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct echoaudio {int* input_gain; int lock; } ;


 int ECHOGAIN_MAXINP ;
 int ECHOGAIN_MININP ;
 int num_analog_busses_in (struct echoaudio*) ;
 int set_input_gain (struct echoaudio*,int,int) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_input_line_level (struct echoaudio*) ;

__attribute__((used)) static int snd_echo_input_gain_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip;
 int c, gain, changed;

 changed = 0;
 chip = snd_kcontrol_chip(kcontrol);
 spin_lock_irq(&chip->lock);
 for (c = 0; c < num_analog_busses_in(chip); c++) {
  gain = ucontrol->value.integer.value[c];

  if (gain < ECHOGAIN_MININP || gain > ECHOGAIN_MAXINP)
   continue;
  if (chip->input_gain[c] != gain) {
   set_input_gain(chip, c, gain);
   changed = 1;
  }
 }
 if (changed)
  update_input_line_level(chip);
 spin_unlock_irq(&chip->lock);
 return changed;
}
