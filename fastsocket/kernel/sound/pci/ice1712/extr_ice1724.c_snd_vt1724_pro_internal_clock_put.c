
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_10__ {int (* set_pro_rate ) (struct snd_ice1712*,int ) ;} ;
struct snd_ice1712 {unsigned int (* get_rate ) (struct snd_ice1712*) ;unsigned int pro_rate_default; unsigned int akm_codecs; TYPE_6__* akm; TYPE_4__ gpio; int reg_lock; TYPE_3__* hw_rates; int (* set_spdif_clock ) (struct snd_ice1712*) ;scalar_t__ (* is_spdif_master ) (struct snd_ice1712*) ;} ;
struct TYPE_7__ {unsigned int* item; } ;
struct TYPE_8__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_11__ {int (* set_rate_val ) (TYPE_6__*,int ) ;} ;
struct TYPE_12__ {TYPE_5__ ops; } ;
struct TYPE_9__ {unsigned int count; unsigned int* list; } ;


 int EINVAL ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_vt1724_set_pro_rate (struct snd_ice1712*,unsigned int,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (struct snd_ice1712*) ;
 unsigned int stub2 (struct snd_ice1712*) ;
 int stub3 (struct snd_ice1712*) ;
 int stub4 (struct snd_ice1712*,int ) ;
 int stub5 (TYPE_6__*,int ) ;

__attribute__((used)) static int snd_vt1724_pro_internal_clock_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int old_rate, new_rate;
 unsigned int item = ucontrol->value.enumerated.item[0];
 unsigned int spdif = ice->hw_rates->count;

 if (item > spdif)
  return -EINVAL;

 spin_lock_irq(&ice->reg_lock);
 if (ice->is_spdif_master(ice))
  old_rate = 0;
 else
  old_rate = ice->get_rate(ice);
 if (item == spdif) {

  ice->set_spdif_clock(ice);
  new_rate = 0;
 } else {

  new_rate = ice->hw_rates->list[item];
  ice->pro_rate_default = new_rate;
  spin_unlock_irq(&ice->reg_lock);
  snd_vt1724_set_pro_rate(ice, ice->pro_rate_default, 1);
  spin_lock_irq(&ice->reg_lock);
 }
 spin_unlock_irq(&ice->reg_lock);


 if (old_rate != new_rate && !new_rate) {

  unsigned int i;
  if (ice->gpio.set_pro_rate)
   ice->gpio.set_pro_rate(ice, 0);
  for (i = 0; i < ice->akm_codecs; i++) {
   if (ice->akm[i].ops.set_rate_val)
    ice->akm[i].ops.set_rate_val(&ice->akm[i], 0);
  }
 }
 return old_rate != new_rate;
}
