
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; struct prodigy_hifi_spec* spec; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct prodigy_hifi_spec {scalar_t__* master; int * vol; } ;


 scalar_t__ WM8766_LDA1 ;
 scalar_t__ WM8766_LDA2 ;
 scalar_t__ WM8766_LDA3 ;
 scalar_t__ WM_DAC_ATTEN_L ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm8766_set_vol (struct snd_ice1712*,scalar_t__,int ,scalar_t__) ;
 int wm_set_vol (struct snd_ice1712*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int wm_master_vol_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct prodigy_hifi_spec *spec = ice->spec;
 int ch, change = 0;

 mutex_lock(&ice->gpio_mutex);
 for (ch = 0; ch < 2; ch++) {
  if (ucontrol->value.integer.value[ch] != spec->master[ch]) {
   spec->master[ch] = ucontrol->value.integer.value[ch];


   wm_set_vol(ice, WM_DAC_ATTEN_L + ch,
       spec->vol[2 + ch], spec->master[ch]);

   wm8766_set_vol(ice, WM8766_LDA1 + ch,
           spec->vol[0 + ch], spec->master[ch]);

   wm8766_set_vol(ice, WM8766_LDA2 + ch,
           spec->vol[4 + ch], spec->master[ch]);

   wm8766_set_vol(ice, WM8766_LDA3 + ch,
           spec->vol[6 + ch], spec->master[ch]);
   change = 1;
  }
 }
 mutex_unlock(&ice->gpio_mutex);
 return change;
}
