
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; } ;


 int GPIO_MERIDIAN_DIG_BOARD ;
 int GPIO_MERIDIAN_DIG_EXT ;
 int GPIO_MERIDIAN_DIG_MASK ;
 int OXYGEN_GPIO_DATA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_read16 (struct oxygen*,int ) ;
 int oxygen_write16 (struct oxygen*,int ,int) ;

__attribute__((used)) static int meridian_dig_source_put(struct snd_kcontrol *ctl,
       struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 u16 old_reg, new_reg;
 int changed;

 mutex_lock(&chip->mutex);
 old_reg = oxygen_read16(chip, OXYGEN_GPIO_DATA);
 new_reg = old_reg & ~GPIO_MERIDIAN_DIG_MASK;
 if (value->value.enumerated.item[0] == 0)
  new_reg |= GPIO_MERIDIAN_DIG_BOARD;
 else
  new_reg |= GPIO_MERIDIAN_DIG_EXT;
 changed = new_reg != old_reg;
 if (changed)
  oxygen_write16(chip, OXYGEN_GPIO_DATA, new_reg);
 mutex_unlock(&chip->mutex);
 return changed;
}
