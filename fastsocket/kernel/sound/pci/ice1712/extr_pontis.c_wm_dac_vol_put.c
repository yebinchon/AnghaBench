
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; } ;
struct TYPE_3__ {unsigned short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned short DAC_MIN ;
 int WM_DAC_ATTEN_L ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm_get (struct snd_ice1712*,int) ;
 int wm_put (struct snd_ice1712*,int,unsigned short) ;
 int wm_put_nocache (struct snd_ice1712*,int,unsigned short) ;

__attribute__((used)) static int wm_dac_vol_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short oval, nval;
 int i, idx, change = 0;

 mutex_lock(&ice->gpio_mutex);
 for (i = 0; i < 2; i++) {
  nval = ucontrol->value.integer.value[i];
  nval = (nval ? (nval + DAC_MIN) : 0) & 0xff;
  idx = WM_DAC_ATTEN_L + i;
  oval = wm_get(ice, idx) & 0xff;
  if (oval != nval) {
   wm_put(ice, idx, nval);
   wm_put_nocache(ice, idx, nval | 0x100);
   change = 1;
  }
 }
 mutex_unlock(&ice->gpio_mutex);
 return change;
}
