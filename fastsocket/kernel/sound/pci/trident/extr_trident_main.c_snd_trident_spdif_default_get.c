
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {int spdif_bits; int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_default_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);

 spin_lock_irq(&trident->reg_lock);
 ucontrol->value.iec958.status[0] = (trident->spdif_bits >> 0) & 0xff;
 ucontrol->value.iec958.status[1] = (trident->spdif_bits >> 8) & 0xff;
 ucontrol->value.iec958.status[2] = (trident->spdif_bits >> 16) & 0xff;
 ucontrol->value.iec958.status[3] = (trident->spdif_bits >> 24) & 0xff;
 spin_unlock_irq(&trident->reg_lock);
 return 0;
}
