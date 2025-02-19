
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci_switch_args {unsigned int mask; unsigned int mask_on; scalar_t__ reg; scalar_t__ is_byte; scalar_t__ ac3_sensitive; } ;
struct cmipci {int reg_lock; scalar_t__ iobase; scalar_t__ mixer_insensitive; } ;


 unsigned int inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 unsigned int snd_cmipci_read (struct cmipci*,scalar_t__) ;
 int snd_cmipci_write (struct cmipci*,scalar_t__,unsigned int) ;
 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int _snd_cmipci_uswitch_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol,
       struct cmipci_switch_args *args)
{
 unsigned int val;
 int change;
 struct cmipci *cm = snd_kcontrol_chip(kcontrol);

 spin_lock_irq(&cm->reg_lock);
 if (args->ac3_sensitive && cm->mixer_insensitive) {

  spin_unlock_irq(&cm->reg_lock);
  return 0;
 }
 if (args->is_byte)
  val = inb(cm->iobase + args->reg);
 else
  val = snd_cmipci_read(cm, args->reg);
 change = (val & args->mask) != (ucontrol->value.integer.value[0] ?
   args->mask_on : (args->mask & ~args->mask_on));
 if (change) {
  val &= ~args->mask;
  if (ucontrol->value.integer.value[0])
   val |= args->mask_on;
  else
   val |= (args->mask & ~args->mask_on);
  if (args->is_byte)
   outb((unsigned char)val, cm->iobase + args->reg);
  else
   snd_cmipci_write(cm, args->reg, val);
 }
 spin_unlock_irq(&cm->reg_lock);
 return change;
}
