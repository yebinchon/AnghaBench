
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {int output_sel; int* cs4245_regs; int hp_vol_att; } ;


 int CS4245_A_OUT_SEL_DAC ;
 int CS4245_A_OUT_SEL_HIZ ;
 int CS4245_A_OUT_SEL_MASK ;
 size_t CS4245_DAC_A_CTRL ;
 size_t CS4245_DAC_B_CTRL ;
 size_t CS4245_SIGNAL_SEL ;
 int EINVAL ;
 int GPIO_HP_REAR ;
 int OXYGEN_GPIO_DATA ;
 int cs4245_write_cached (struct oxygen*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_write16_masked (struct oxygen*,int ,int ,int ) ;

__attribute__((used)) static int output_switch_put(struct snd_kcontrol *ctl,
        struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 u8 reg;
 int changed;

 if (value->value.enumerated.item[0] > 2)
  return -EINVAL;

 mutex_lock(&chip->mutex);
 changed = value->value.enumerated.item[0] != data->output_sel;
 if (changed) {
  data->output_sel = value->value.enumerated.item[0];

  reg = data->cs4245_regs[CS4245_SIGNAL_SEL] &
      ~CS4245_A_OUT_SEL_MASK;
  reg |= data->output_sel == 2 ?
    CS4245_A_OUT_SEL_DAC : CS4245_A_OUT_SEL_HIZ;
  cs4245_write_cached(chip, CS4245_SIGNAL_SEL, reg);

  cs4245_write_cached(chip, CS4245_DAC_A_CTRL,
        data->output_sel ? data->hp_vol_att : 0);
  cs4245_write_cached(chip, CS4245_DAC_B_CTRL,
        data->output_sel ? data->hp_vol_att : 0);

  oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
          data->output_sel == 1 ? GPIO_HP_REAR : 0,
          GPIO_HP_REAR);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
