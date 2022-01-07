
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM_DAC_CTRL1 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned short wm_get (struct snd_ice1712*,int ) ;
 int wm_put (struct snd_ice1712*,int ,unsigned short) ;
 int wm_put_nocache (struct snd_ice1712*,int ,unsigned short) ;

__attribute__((used)) static int wm_chswap_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short val, oval;
 int change = 0;

 mutex_lock(&ice->gpio_mutex);
 oval = wm_get(ice, WM_DAC_CTRL1);
 val = oval & 0x0f;
 if (ucontrol->value.integer.value[0])
  val |= 0x60;
 else
  val |= 0x90;
 if (val != oval) {
  wm_put(ice, WM_DAC_CTRL1, val);
  wm_put_nocache(ice, WM_DAC_CTRL1, val);
  change = 1;
 }
 mutex_unlock(&ice->gpio_mutex);
 return change;
}
