
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {int reg_lock; scalar_t__ port; scalar_t__ audigy; TYPE_3__* card_capabilities; } ;
struct TYPE_4__ {unsigned int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {scalar_t__ i2c_adc; scalar_t__ invert_shared_spdif; } ;


 scalar_t__ A_IOCFG ;
 unsigned int A_IOCFG_GPOUT0 ;
 scalar_t__ HCFG ;
 unsigned int HCFG_GPOUT0 ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_shared_spdif_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 unsigned long flags;
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int reg, val, sw;
 int change = 0;

 sw = ucontrol->value.integer.value[0];
 if (emu->card_capabilities->invert_shared_spdif)
  sw = !sw;
 spin_lock_irqsave(&emu->reg_lock, flags);
 if ( emu->card_capabilities->i2c_adc) {

 } else if (emu->audigy) {
  reg = inl(emu->port + A_IOCFG);
  val = sw ? A_IOCFG_GPOUT0 : 0;
  change = (reg & A_IOCFG_GPOUT0) != val;
  if (change) {
   reg &= ~A_IOCFG_GPOUT0;
   reg |= val;
   outl(reg | val, emu->port + A_IOCFG);
  }
 }
 reg = inl(emu->port + HCFG);
 val = sw ? HCFG_GPOUT0 : 0;
 change |= (reg & HCFG_GPOUT0) != val;
 if (change) {
  reg &= ~HCFG_GPOUT0;
  reg |= val;
  outl(reg | val, emu->port + HCFG);
 }
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return change;
}
