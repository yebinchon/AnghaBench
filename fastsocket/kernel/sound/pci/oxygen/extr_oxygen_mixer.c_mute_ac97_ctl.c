
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* ac97_switch ) (struct oxygen*,unsigned int,int) ;} ;
struct oxygen {TYPE_2__** controls; int card; TYPE_1__ model; } ;
struct TYPE_4__ {int private_value; int id; } ;


 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int oxygen_read_ac97 (struct oxygen*,int ,unsigned int) ;
 int oxygen_write_ac97 (struct oxygen*,int ,unsigned int,int) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int stub1 (struct oxygen*,unsigned int,int) ;

__attribute__((used)) static void mute_ac97_ctl(struct oxygen *chip, unsigned int control)
{
 unsigned int priv_idx;
 u16 value;

 if (!chip->controls[control])
  return;
 priv_idx = chip->controls[control]->private_value & 0xff;
 value = oxygen_read_ac97(chip, 0, priv_idx);
 if (!(value & 0x8000)) {
  oxygen_write_ac97(chip, 0, priv_idx, value | 0x8000);
  if (chip->model.ac97_switch)
   chip->model.ac97_switch(chip, priv_idx, 0x8000);
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &chip->controls[control]->id);
 }
}
