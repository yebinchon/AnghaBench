
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int num_total_dacs; struct aureon_spec* spec; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct aureon_spec {unsigned int* master; int * vol; } ;


 scalar_t__ WM_DAC_ATTEN ;
 unsigned int WM_VOL_MAX ;
 unsigned int WM_VOL_MUTE ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm_set_vol (struct snd_ice1712*,scalar_t__,int ,unsigned int) ;

__attribute__((used)) static int wm_master_vol_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct aureon_spec *spec = ice->spec;
 int ch, change = 0;

 snd_ice1712_save_gpio_status(ice);
 for (ch = 0; ch < 2; ch++) {
  unsigned int vol = ucontrol->value.integer.value[ch];
  if (vol > WM_VOL_MAX)
   continue;
  vol |= spec->master[ch] & WM_VOL_MUTE;
  if (vol != spec->master[ch]) {
   int dac;
   spec->master[ch] = vol;
   for (dac = 0; dac < ice->num_total_dacs; dac += 2)
    wm_set_vol(ice, WM_DAC_ATTEN + dac + ch,
        spec->vol[dac + ch],
        spec->master[ch]);
   change = 1;
  }
 }
 snd_ice1712_restore_gpio_status(ice);
 return change;
}
