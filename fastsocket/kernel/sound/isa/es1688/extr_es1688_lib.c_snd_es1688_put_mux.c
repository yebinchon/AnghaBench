
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_es1688 {int reg_lock; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int EINVAL ;
 int ES1688_REC_DEV ;
 unsigned char snd_es1688_mixer_read (struct snd_es1688*,int ) ;
 int snd_es1688_mixer_write (struct snd_es1688*,int ,unsigned char) ;
 struct snd_es1688* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_es1688_put_mux(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_es1688 *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 unsigned char oval, nval;
 int change;

 if (ucontrol->value.enumerated.item[0] > 8)
  return -EINVAL;
 spin_lock_irqsave(&chip->reg_lock, flags);
 oval = snd_es1688_mixer_read(chip, ES1688_REC_DEV);
 nval = (ucontrol->value.enumerated.item[0] & 7) | (oval & ~15);
 change = nval != oval;
 if (change)
  snd_es1688_mixer_write(chip, ES1688_REC_DEV, nval);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return change;
}
