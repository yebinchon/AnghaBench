
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_ymfpci {int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int YDSXGR_GLOBALCTRL ;
 struct snd_ymfpci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ymfpci_drec_source_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *value)
{
 struct snd_ymfpci *chip = snd_kcontrol_chip(kcontrol);
 u16 reg;

 spin_lock_irq(&chip->reg_lock);
 reg = snd_ymfpci_readw(chip, YDSXGR_GLOBALCTRL);
 spin_unlock_irq(&chip->reg_lock);
 if (!(reg & 0x100))
  value->value.enumerated.item[0] = 0;
 else
  value->value.enumerated.item[0] = 1 + ((reg & 0x200) != 0);
 return 0;
}
