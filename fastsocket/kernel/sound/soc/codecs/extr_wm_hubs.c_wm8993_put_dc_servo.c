
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int WM8993_DCS_TRIG_SINGLE_0 ;
 int WM8993_DCS_TRIG_SINGLE_1 ;
 int WM8993_DC_SERVO_0 ;
 int WM8993_HPOUT1L_ENA ;
 int WM8993_HPOUT1R_ENA ;
 int WM8993_POWER_MANAGEMENT_1 ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_put_volsw_2r (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_update_bits (struct snd_soc_codec*,int ,int,int) ;

__attribute__((used)) static int wm8993_put_dc_servo(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 int ret;

 ret = snd_soc_put_volsw_2r(kcontrol, ucontrol);


 if (snd_soc_read(codec, WM8993_POWER_MANAGEMENT_1)
     & (WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA))
  snd_soc_update_bits(codec,
        WM8993_DC_SERVO_0,
        WM8993_DCS_TRIG_SINGLE_0 |
        WM8993_DCS_TRIG_SINGLE_1,
        WM8993_DCS_TRIG_SINGLE_0 |
        WM8993_DCS_TRIG_SINGLE_1);

 return ret;
}
