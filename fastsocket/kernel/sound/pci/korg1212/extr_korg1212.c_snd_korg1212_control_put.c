
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_korg1212 {scalar_t__ leftADCInSens; scalar_t__ rightADCInSens; int lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ k1212MaxADCSens ;
 scalar_t__ k1212MinADCSens ;
 struct snd_korg1212* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_korg1212_WriteADCSensitivity (struct snd_korg1212*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_korg1212_control_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *u)
{
 struct snd_korg1212 *korg1212 = snd_kcontrol_chip(kcontrol);
        int change = 0;

 spin_lock_irq(&korg1212->lock);

 if (u->value.integer.value[0] >= k1212MinADCSens &&
     u->value.integer.value[0] <= k1212MaxADCSens &&
     u->value.integer.value[0] != korg1212->leftADCInSens) {
                korg1212->leftADCInSens = u->value.integer.value[0];
                change = 1;
        }
 if (u->value.integer.value[1] >= k1212MinADCSens &&
     u->value.integer.value[1] <= k1212MaxADCSens &&
     u->value.integer.value[1] != korg1212->rightADCInSens) {
                korg1212->rightADCInSens = u->value.integer.value[1];
                change = 1;
        }

 spin_unlock_irq(&korg1212->lock);

        if (change)
                snd_korg1212_WriteADCSensitivity(korg1212);

        return change;
}
