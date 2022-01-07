
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb {int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned char* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 struct snd_sb* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned char snd_sb16_get_dma_mode (struct snd_sb*) ;
 int snd_sb16_set_dma_mode (struct snd_sb*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb16_dma_control_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 unsigned char nval, oval;
 int change;

 if ((nval = ucontrol->value.enumerated.item[0]) > 2)
  return -EINVAL;
 spin_lock_irqsave(&chip->reg_lock, flags);
 oval = snd_sb16_get_dma_mode(chip);
 change = nval != oval;
 snd_sb16_set_dma_mode(chip, nval);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return change;
}
