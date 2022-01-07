
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {unsigned short* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct echoaudio {unsigned short num_digital_modes; unsigned short* digital_mode_list; unsigned short digital_mode; int mode_mutex; TYPE_3__* clock_src_ctl; int card; int opencount; } ;
struct TYPE_6__ {int id; } ;


 int DE_ACT (char*) ;
 int EAGAIN ;
 int EINVAL ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_digital_mode (struct echoaudio*,unsigned short) ;
 int snd_ctl_notify (int ,int ,int *) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_echo_digital_mode_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip;
 int changed;
 unsigned short emode, dmode;

 changed = 0;
 chip = snd_kcontrol_chip(kcontrol);

 emode = ucontrol->value.enumerated.item[0];
 if (emode >= chip->num_digital_modes)
  return -EINVAL;
 dmode = chip->digital_mode_list[emode];

 if (dmode != chip->digital_mode) {


  mutex_lock(&chip->mode_mutex);




  if (atomic_read(&chip->opencount)) {
   changed = -EAGAIN;
  } else {
   changed = set_digital_mode(chip, dmode);

   if (changed > 0 && chip->clock_src_ctl) {
    snd_ctl_notify(chip->card,
            SNDRV_CTL_EVENT_MASK_VALUE,
            &chip->clock_src_ctl->id);
    DE_ACT(("SDM() =%d\n", changed));
   }
   if (changed >= 0)
    changed = 1;
  }
  mutex_unlock(&chip->mode_mutex);
 }
 return changed;
}
