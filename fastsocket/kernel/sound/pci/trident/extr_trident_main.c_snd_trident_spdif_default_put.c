
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {unsigned int spdif_bits; scalar_t__ device; int reg_lock; int * spdif; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ NX_SPCSTATUS ;
 scalar_t__ NX_SPCTRL_SPCSO ;
 scalar_t__ SI_SPDIF_CS ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int TRID_REG (struct snd_trident*,scalar_t__) ;
 int inb (int ) ;
 int outl (unsigned int,int ) ;
 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_default_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change;

 val = (ucontrol->value.iec958.status[0] << 0) |
       (ucontrol->value.iec958.status[1] << 8) |
       (ucontrol->value.iec958.status[2] << 16) |
       (ucontrol->value.iec958.status[3] << 24);
 spin_lock_irq(&trident->reg_lock);
 change = trident->spdif_bits != val;
 trident->spdif_bits = val;
 if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
  if ((inb(TRID_REG(trident, NX_SPCTRL_SPCSO + 3)) & 0x10) == 0)
   outl(trident->spdif_bits, TRID_REG(trident, NX_SPCSTATUS));
 } else {
  if (trident->spdif == ((void*)0))
   outl(trident->spdif_bits, TRID_REG(trident, SI_SPDIF_CS));
 }
 spin_unlock_irq(&trident->reg_lock);
 return change;
}
