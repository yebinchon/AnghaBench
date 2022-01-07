
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_gus_card {unsigned char joystick_dac; int reg_lock; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,unsigned char) ;
 struct snd_gus_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_gus_joystick_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_gus_card *gus = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int change;
 unsigned char nval;

 nval = ucontrol->value.integer.value[0] & 31;
 spin_lock_irqsave(&gus->reg_lock, flags);
 change = gus->joystick_dac != nval;
 gus->joystick_dac = nval;
 snd_gf1_write8(gus, SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL, gus->joystick_dac);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
 return change;
}
