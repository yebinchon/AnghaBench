
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
 scalar_t__ WM_DAC_ATTEN_L ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm_get (struct snd_ice1712*,scalar_t__) ;

__attribute__((used)) static int wm_dac_vol_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short val;
 int i;

 mutex_lock(&ice->gpio_mutex);
 for (i = 0; i < 2; i++) {
  val = wm_get(ice, WM_DAC_ATTEN_L + i) & 0xff;
  val = val > DAC_MIN ? (val - DAC_MIN) : 0;
  ucontrol->value.integer.value[i] = val;
 }
 mutex_unlock(&ice->gpio_mutex);
 return 0;
}
