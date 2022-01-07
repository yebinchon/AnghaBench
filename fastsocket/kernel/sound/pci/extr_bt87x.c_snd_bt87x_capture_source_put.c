
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_bt87x {int reg_control; int reg_lock; } ;


 int CTL_A_SEL_MASK ;
 int CTL_A_SEL_SHIFT ;
 int REG_GPIO_DMA_CTL ;
 int snd_bt87x_writel (struct snd_bt87x*,int ,int) ;
 struct snd_bt87x* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_bt87x_capture_source_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *value)
{
 struct snd_bt87x *chip = snd_kcontrol_chip(kcontrol);
 u32 old_control;
 int changed;

 spin_lock_irq(&chip->reg_lock);
 old_control = chip->reg_control;
 chip->reg_control = (chip->reg_control & ~CTL_A_SEL_MASK)
  | (value->value.enumerated.item[0] << CTL_A_SEL_SHIFT);
 snd_bt87x_writel(chip, REG_GPIO_DMA_CTL, chip->reg_control);
 changed = chip->reg_control != old_control;
 spin_unlock_irq(&chip->reg_lock);
 return changed;
}
