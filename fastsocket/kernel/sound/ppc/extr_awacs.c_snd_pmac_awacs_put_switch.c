
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {int* awacs_reg; int reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_pmac_awacs_write_reg (struct snd_pmac*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_pmac_awacs_put_switch(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int invert = (kcontrol->private_value >> 16) & 1;
 int mask = 1 << shift;
 int val, changed;
 unsigned long flags;

 spin_lock_irqsave(&chip->reg_lock, flags);
 val = chip->awacs_reg[reg] & ~mask;
 if (ucontrol->value.integer.value[0] != invert)
  val |= mask;
 changed = chip->awacs_reg[reg] != val;
 if (changed)
  snd_pmac_awacs_write_reg(chip, reg, val);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return changed;
}
