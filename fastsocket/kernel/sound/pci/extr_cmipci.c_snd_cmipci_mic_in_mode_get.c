
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci {int reg_lock; } ;


 int CM_REG_MISC ;
 int CM_SPDIF_INVERSE ;
 int snd_cmipci_read_b (struct cmipci*,int ) ;
 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cmipci_mic_in_mode_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct cmipci *cm = snd_kcontrol_chip(kcontrol);

 spin_lock_irq(&cm->reg_lock);
 ucontrol->value.enumerated.item[0] =
  (snd_cmipci_read_b(cm, CM_REG_MISC) & CM_SPDIF_INVERSE) ? 1 : 0;
 spin_unlock_irq(&cm->reg_lock);
 return 0;
}
