
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {int gain; } ;
struct snd_harmony {TYPE_3__ st; int mixer_lock; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int snd_harmony_set_new_gain (struct snd_harmony*) ;
 struct snd_harmony* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_harmony_volume_put(struct snd_kcontrol *kc,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_harmony *h = snd_kcontrol_chip(kc);
 int shift_left = (kc->private_value) & 0xff;
 int shift_right = (kc->private_value >> 8) & 0xff;
 int mask = (kc->private_value >> 16) & 0xff;
 int invert = (kc->private_value >> 24) & 0xff;
 int left, right;
 int old_gain = h->st.gain;

 spin_lock_irq(&h->mixer_lock);

 left = ucontrol->value.integer.value[0] & mask;
 if (invert)
  left = mask - left;
 h->st.gain &= ~( (mask << shift_left ) );
  h->st.gain |= (left << shift_left);

 if (shift_left != shift_right) {
  right = ucontrol->value.integer.value[1] & mask;
  if (invert)
   right = mask - right;
  h->st.gain &= ~( (mask << shift_right) );
  h->st.gain |= (right << shift_right);
 }

 snd_harmony_set_new_gain(h);

 spin_unlock_irq(&h->mixer_lock);

 return h->st.gain != old_gain;
}
