
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rme9652 {scalar_t__ ss_channels; int lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EBUSY ;
 scalar_t__ RME9652_NCHANNELS ;
 int rme9652_set_sync_pref (struct snd_rme9652*,unsigned int) ;
 int rme9652_sync_pref (struct snd_rme9652*) ;
 struct snd_rme9652* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme9652_use_is_exclusive (struct snd_rme9652*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme9652_put_sync_pref(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_rme9652 *rme9652 = snd_kcontrol_chip(kcontrol);
 int change, max;
 unsigned int val;

 if (!snd_rme9652_use_is_exclusive(rme9652))
  return -EBUSY;
 max = rme9652->ss_channels == RME9652_NCHANNELS ? 4 : 3;
 val = ucontrol->value.enumerated.item[0] % max;
 spin_lock_irq(&rme9652->lock);
 change = (int)val != rme9652_sync_pref(rme9652);
 rme9652_set_sync_pref(rme9652, val);
 spin_unlock_irq(&rme9652->lock);
 return change;
}
