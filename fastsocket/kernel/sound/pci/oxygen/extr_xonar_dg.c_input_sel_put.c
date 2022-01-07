
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
struct dg {size_t input_sel; int const* cs4245_regs; int ** input_vol; } ;


 size_t CS4245_ANALOG_IN ;
 int CS4245_PGA_A_CTRL ;
 int CS4245_PGA_B_CTRL ;



 int const CS4245_SEL_MASK ;

 int EINVAL ;
 int GPIO_INPUT_ROUTE ;
 int OXYGEN_GPIO_DATA ;
 int cs4245_write (struct oxygen*,size_t,int const) ;
 int cs4245_write_cached (struct oxygen*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_write16_masked (struct oxygen*,int ,int ,int ) ;

__attribute__((used)) static int input_sel_put(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *value)
{
 static const u8 sel_values[4] = {
  128,
  131,
  130,
  129
 };
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 int changed;

 if (value->value.enumerated.item[0] > 3)
  return -EINVAL;

 mutex_lock(&chip->mutex);
 changed = value->value.enumerated.item[0] != data->input_sel;
 if (changed) {
  data->input_sel = value->value.enumerated.item[0];

  cs4245_write(chip, CS4245_ANALOG_IN,
        (data->cs4245_regs[CS4245_ANALOG_IN] &
       ~CS4245_SEL_MASK) |
        sel_values[data->input_sel]);

  cs4245_write_cached(chip, CS4245_PGA_A_CTRL,
        data->input_vol[data->input_sel][0]);
  cs4245_write_cached(chip, CS4245_PGA_B_CTRL,
        data->input_vol[data->input_sel][1]);

  oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
          data->input_sel ? 0 : GPIO_INPUT_ROUTE,
          GPIO_INPUT_ROUTE);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
