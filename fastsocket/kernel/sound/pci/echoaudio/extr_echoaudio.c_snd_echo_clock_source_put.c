
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct echoaudio {unsigned int input_clock_types; unsigned int* clock_source_list; unsigned int input_clock; int mode_mutex; int lock; } ;


 int DE_ACT (char*) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_input_clock (struct echoaudio*,unsigned int) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_echo_clock_source_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip;
 int changed;
 unsigned int eclock, dclock;

 changed = 0;
 chip = snd_kcontrol_chip(kcontrol);
 eclock = ucontrol->value.enumerated.item[0];
 if (eclock >= chip->input_clock_types)
  return -EINVAL;
 dclock = chip->clock_source_list[eclock];
 if (chip->input_clock != dclock) {
  mutex_lock(&chip->mode_mutex);
  spin_lock_irq(&chip->lock);
  if ((changed = set_input_clock(chip, dclock)) == 0)
   changed = 1;
  spin_unlock_irq(&chip->lock);
  mutex_unlock(&chip->mode_mutex);
 }

 if (changed < 0)
  DE_ACT(("seticlk val%d err 0x%x\n", dclock, changed));

 return changed;
}
