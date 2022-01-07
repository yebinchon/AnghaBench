
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {struct dg* model_data; } ;
struct dg {int* cs4245_regs; } ;


 size_t CS4245_ADC_CTRL ;
 int CS4245_HPF_FREEZE ;

__attribute__((used)) static int hpf_get(struct snd_kcontrol *ctl, struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;

 value->value.enumerated.item[0] =
  !!(data->cs4245_regs[CS4245_ADC_CTRL] & CS4245_HPF_FREEZE);
 return 0;
}
