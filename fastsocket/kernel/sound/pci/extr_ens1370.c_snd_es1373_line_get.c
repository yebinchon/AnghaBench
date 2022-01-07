
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ensoniq {int ctrl; int reg_lock; } ;


 int ES_1371_GPIO_OUTM ;
 struct ensoniq* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_es1373_line_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct ensoniq *ensoniq = snd_kcontrol_chip(kcontrol);
 int val = 0;

 spin_lock_irq(&ensoniq->reg_lock);
 if ((ensoniq->ctrl & ES_1371_GPIO_OUTM) >= 4)
      val = 1;
 ucontrol->value.integer.value[0] = val;
 spin_unlock_irq(&ensoniq->reg_lock);
 return 0;
}
