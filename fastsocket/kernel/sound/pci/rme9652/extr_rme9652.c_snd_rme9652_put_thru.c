
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_rme9652 {unsigned int ss_channels; int thru_bits; int lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EBUSY ;
 int rme9652_set_thru (struct snd_rme9652*,unsigned int,int) ;
 struct snd_rme9652* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme9652_use_is_exclusive (struct snd_rme9652*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme9652_put_thru(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_rme9652 *rme9652 = snd_kcontrol_chip(kcontrol);
 int change;
 unsigned int chn;
 u32 thru_bits = 0;

 if (!snd_rme9652_use_is_exclusive(rme9652))
  return -EBUSY;

 for (chn = 0; chn < rme9652->ss_channels; ++chn) {
  if (ucontrol->value.integer.value[chn])
   thru_bits |= 1 << chn;
 }

 spin_lock_irq(&rme9652->lock);
 change = thru_bits ^ rme9652->thru_bits;
 if (change) {
  for (chn = 0; chn < rme9652->ss_channels; ++chn) {
   if (!(change & (1 << chn)))
    continue;
   rme9652_set_thru(rme9652,chn,thru_bits&(1<<chn));
  }
 }
 spin_unlock_irq(&rme9652->lock);
 return !!change;
}
