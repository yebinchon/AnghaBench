
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
struct cmipci_sb_reg {int left_shift; int mask; int right_shift; scalar_t__ invert; int right_reg; scalar_t__ stereo; int left_reg; } ;
struct cmipci {int reg_lock; } ;


 int cmipci_sb_reg_decode (struct cmipci_sb_reg*,int ) ;
 int snd_cmipci_mixer_read (struct cmipci*,int ) ;
 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cmipci_get_volume(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct cmipci *cm = snd_kcontrol_chip(kcontrol);
 struct cmipci_sb_reg reg;
 int val;

 cmipci_sb_reg_decode(&reg, kcontrol->private_value);
 spin_lock_irq(&cm->reg_lock);
 val = (snd_cmipci_mixer_read(cm, reg.left_reg) >> reg.left_shift) & reg.mask;
 if (reg.invert)
  val = reg.mask - val;
 ucontrol->value.integer.value[0] = val;
 if (reg.stereo) {
  val = (snd_cmipci_mixer_read(cm, reg.right_reg) >> reg.right_shift) & reg.mask;
  if (reg.invert)
   val = reg.mask - val;
   ucontrol->value.integer.value[1] = val;
 }
 spin_unlock_irq(&cm->reg_lock);
 return 0;
}
