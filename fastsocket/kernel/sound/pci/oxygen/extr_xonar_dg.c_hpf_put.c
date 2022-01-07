
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {int* cs4245_regs; } ;


 size_t CS4245_ADC_CTRL ;
 int CS4245_HPF_FREEZE ;
 int cs4245_write (struct oxygen*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hpf_put(struct snd_kcontrol *ctl, struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 u8 reg;
 int changed;

 mutex_lock(&chip->mutex);
 reg = data->cs4245_regs[CS4245_ADC_CTRL] & ~CS4245_HPF_FREEZE;
 if (value->value.enumerated.item[0])
  reg |= CS4245_HPF_FREEZE;
 changed = reg != data->cs4245_regs[CS4245_ADC_CTRL];
 if (changed)
  cs4245_write(chip, CS4245_ADC_CTRL, reg);
 mutex_unlock(&chip->mutex);
 return changed;
}
