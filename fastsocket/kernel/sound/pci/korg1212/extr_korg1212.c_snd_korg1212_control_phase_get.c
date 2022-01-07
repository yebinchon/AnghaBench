
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_korg1212 {int lock; int * volumePhase; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_korg1212* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_korg1212_control_phase_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *u)
{
 struct snd_korg1212 *korg1212 = snd_kcontrol_chip(kcontrol);
 int i = kcontrol->private_value;

 spin_lock_irq(&korg1212->lock);

        u->value.integer.value[0] = korg1212->volumePhase[i];

 if (i >= 8)
         u->value.integer.value[1] = korg1212->volumePhase[i+1];

 spin_unlock_irq(&korg1212->lock);

        return 0;
}
