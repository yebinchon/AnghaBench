
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ak4531 {int* regs; int reg_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ak4531* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ak4531_get_input_sw(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ak4531 *ak4531 = snd_kcontrol_chip(kcontrol);
 int reg1 = kcontrol->private_value & 0xff;
 int reg2 = (kcontrol->private_value >> 8) & 0xff;
 int left_shift = (kcontrol->private_value >> 16) & 0x0f;
 int right_shift = (kcontrol->private_value >> 24) & 0x0f;

 mutex_lock(&ak4531->reg_mutex);
 ucontrol->value.integer.value[0] = (ak4531->regs[reg1] >> left_shift) & 1;
 ucontrol->value.integer.value[1] = (ak4531->regs[reg2] >> left_shift) & 1;
 ucontrol->value.integer.value[2] = (ak4531->regs[reg1] >> right_shift) & 1;
 ucontrol->value.integer.value[3] = (ak4531->regs[reg2] >> right_shift) & 1;
 mutex_unlock(&ak4531->reg_mutex);
 return 0;
}
