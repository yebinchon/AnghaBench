
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wss {unsigned short* image; int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 size_t CS4231_LEFT_INPUT ;
 unsigned short CS4231_MIXS_ALL ;
 size_t CS4231_RIGHT_INPUT ;
 int EINVAL ;
 struct snd_wss* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_wss_out (struct snd_wss*,size_t,unsigned short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_wss_put_mux(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_wss *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 unsigned short left, right;
 int change;

 if (ucontrol->value.enumerated.item[0] > 3 ||
     ucontrol->value.enumerated.item[1] > 3)
  return -EINVAL;
 left = ucontrol->value.enumerated.item[0] << 6;
 right = ucontrol->value.enumerated.item[1] << 6;
 spin_lock_irqsave(&chip->reg_lock, flags);
 left = (chip->image[CS4231_LEFT_INPUT] & ~CS4231_MIXS_ALL) | left;
 right = (chip->image[CS4231_RIGHT_INPUT] & ~CS4231_MIXS_ALL) | right;
 change = left != chip->image[CS4231_LEFT_INPUT] ||
   right != chip->image[CS4231_RIGHT_INPUT];
 snd_wss_out(chip, CS4231_LEFT_INPUT, left);
 snd_wss_out(chip, CS4231_RIGHT_INPUT, right);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return change;
}
