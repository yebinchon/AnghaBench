
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci {int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int YDSXGR_BUF441OUTVOL ;
 unsigned int YDSXGR_NATIVEDACOUTVOL ;
 struct snd_ymfpci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int snd_ymfpci_readl (struct snd_ymfpci*,unsigned int) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,unsigned int,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ymfpci_put_nativedacvol(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ymfpci *chip = snd_kcontrol_chip(kcontrol);
 unsigned int reg = YDSXGR_NATIVEDACOUTVOL;
 unsigned int reg2 = YDSXGR_BUF441OUTVOL;
 int change;
 unsigned int value, oval;

 value = ucontrol->value.integer.value[0] & 0x3fff;
 value |= (ucontrol->value.integer.value[1] & 0x3fff) << 16;
 spin_lock_irq(&chip->reg_lock);
 oval = snd_ymfpci_readl(chip, reg);
 change = value != oval;
 snd_ymfpci_writel(chip, reg, value);
 snd_ymfpci_writel(chip, reg2, value);
 spin_unlock_irq(&chip->reg_lock);
 return change;
}
