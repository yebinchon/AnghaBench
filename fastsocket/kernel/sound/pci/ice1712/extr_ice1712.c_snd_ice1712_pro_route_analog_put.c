
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 int ICEMT (struct snd_ice1712*,int ) ;
 int ROUTE_CAPTURE ;
 int ROUTE_PSDOUT03 ;
 unsigned int inl (int ) ;
 unsigned int inw (int ) ;
 int outl (unsigned int,int ) ;
 int outw (unsigned int,int ) ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_pro_route_analog_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int change, shift;
 int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 unsigned int val, old_val, nval;


 if (ucontrol->value.enumerated.item[0] >= 11)
  nval = idx < 2 ? 1 : 0;
 else if (ucontrol->value.enumerated.item[0] >= 9)
  nval = 3;
 else if (ucontrol->value.enumerated.item[0] >= 1)
  nval = 2;
 else
  nval = 0;
 shift = ((idx % 2) * 8) + ((idx / 2) * 2);
 spin_lock_irq(&ice->reg_lock);
 val = old_val = inw(ICEMT(ice, ROUTE_PSDOUT03));
 val &= ~(0x03 << shift);
 val |= nval << shift;
 change = val != old_val;
 if (change)
  outw(val, ICEMT(ice, ROUTE_PSDOUT03));
 spin_unlock_irq(&ice->reg_lock);
 if (nval < 2)
  return change;


 spin_lock_irq(&ice->reg_lock);
 val = old_val = inl(ICEMT(ice, ROUTE_CAPTURE));
 shift = ((idx / 2) * 8) + ((idx % 2) * 4);
 if (nval == 2) {
  nval = ucontrol->value.enumerated.item[0] - 1;
  val &= ~(0x07 << shift);
  val |= nval << shift;
 } else {
  nval = (ucontrol->value.enumerated.item[0] - 9) << 3;
  val &= ~(0x08 << shift);
  val |= nval << shift;
 }
 if (val != old_val) {
  change = 1;
  outl(val, ICEMT(ice, ROUTE_CAPTURE));
 }
 spin_unlock_irq(&ice->reg_lock);
 return change;
}
