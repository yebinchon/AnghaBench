
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int gpio_mutex; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM_ADC_MUX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned short wm_get (struct snd_ice1712*,int ) ;
 int wm_put (struct snd_ice1712*,int ,unsigned short) ;

__attribute__((used)) static int wm_adc_mux_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int bit = kcontrol->private_value;
 unsigned short oval, nval;
 int change;

 mutex_lock(&ice->gpio_mutex);
 nval = oval = wm_get(ice, WM_ADC_MUX);
 if (ucontrol->value.integer.value[0])
  nval |= (1 << bit);
 else
  nval &= ~(1 << bit);
 change = nval != oval;
 if (change) {
  wm_put(ice, WM_ADC_MUX, nval);
 }
 mutex_unlock(&ice->gpio_mutex);
 return 0;
}
