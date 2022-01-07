
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM_ADC_MUX ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned short wm_get (struct snd_ice1712*,int ) ;
 int wm_put (struct snd_ice1712*,int ,unsigned short) ;

__attribute__((used)) static int wm_adc_mux_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short oval, nval;
 int change;

 snd_ice1712_save_gpio_status(ice);
 oval = wm_get(ice, WM_ADC_MUX);
 nval = oval & ~0x77;
 nval |= ucontrol->value.enumerated.item[0] & 7;
 nval |= (ucontrol->value.enumerated.item[1] & 7) << 4;
 change = (oval != nval);
 if (change)
  wm_put(ice, WM_ADC_MUX, nval);
 snd_ice1712_restore_gpio_status(ice);
 return change;
}
