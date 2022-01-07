
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wm8776 {unsigned int switch_bits; } ;
struct snd_maya44 {int mutex; int ice; struct snd_wm8776* wm; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 unsigned int GET_SW_VAL_IDX (int ) ;
 unsigned int GET_SW_VAL_MASK (int ) ;
 int GET_SW_VAL_REG (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;
 struct snd_maya44* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm8776_write_bits (int ,struct snd_wm8776*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int maya_sw_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_maya44 *chip = snd_kcontrol_chip(kcontrol);
 struct snd_wm8776 *wm =
  &chip->wm[snd_ctl_get_ioff(kcontrol, &ucontrol->id)];
 unsigned int idx = GET_SW_VAL_IDX(kcontrol->private_value);
 unsigned int mask, val;
 int changed;

 mutex_lock(&chip->mutex);
 mask = 1 << idx;
 wm->switch_bits &= ~mask;
 val = ucontrol->value.integer.value[0];
 if (val)
  wm->switch_bits |= mask;
 mask = GET_SW_VAL_MASK(kcontrol->private_value);
 changed = wm8776_write_bits(chip->ice, wm,
        GET_SW_VAL_REG(kcontrol->private_value),
        mask, val ? mask : 0);
 mutex_unlock(&chip->mutex);
 return changed;
}
