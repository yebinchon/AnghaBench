
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
struct cmipci_sb_reg {int left_shift; int right_shift; int right_reg; int left_reg; } ;
struct cmipci {int reg_lock; } ;


 int cmipci_sb_reg_decode (struct cmipci_sb_reg*,int ) ;
 int snd_cmipci_mixer_read (struct cmipci*,int ) ;
 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cmipci_get_input_sw(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct cmipci *cm = snd_kcontrol_chip(kcontrol);
 struct cmipci_sb_reg reg;
 int val1, val2;

 cmipci_sb_reg_decode(&reg, kcontrol->private_value);
 spin_lock_irq(&cm->reg_lock);
 val1 = snd_cmipci_mixer_read(cm, reg.left_reg);
 val2 = snd_cmipci_mixer_read(cm, reg.right_reg);
 spin_unlock_irq(&cm->reg_lock);
 ucontrol->value.integer.value[0] = (val1 >> reg.left_shift) & 1;
 ucontrol->value.integer.value[1] = (val2 >> reg.left_shift) & 1;
 ucontrol->value.integer.value[2] = (val1 >> reg.right_shift) & 1;
 ucontrol->value.integer.value[3] = (val2 >> reg.right_shift) & 1;
 return 0;
}
