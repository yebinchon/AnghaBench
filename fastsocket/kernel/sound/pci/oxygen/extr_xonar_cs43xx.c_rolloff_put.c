
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xonar_cs43xx {int* cs4398_regs; int* cs4362a_regs; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct xonar_cs43xx* model_data; } ;


 int CS4362A_FILT_SEL ;
 int CS4398_FILT_SEL ;
 int cs4362a_write (struct oxygen*,int,int) ;
 int cs4398_write (struct oxygen*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rolloff_put(struct snd_kcontrol *ctl,
         struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_cs43xx *data = chip->model_data;
 int changed;
 u8 reg;

 mutex_lock(&chip->mutex);
 reg = data->cs4398_regs[7];
 if (value->value.enumerated.item[0])
  reg |= CS4398_FILT_SEL;
 else
  reg &= ~CS4398_FILT_SEL;
 changed = reg != data->cs4398_regs[7];
 if (changed) {
  cs4398_write(chip, 7, reg);
  if (reg & CS4398_FILT_SEL)
   reg = data->cs4362a_regs[0x04] | CS4362A_FILT_SEL;
  else
   reg = data->cs4362a_regs[0x04] & ~CS4362A_FILT_SEL;
  cs4362a_write(chip, 0x04, reg);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
