
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8350_output {int right_vol; int left_vol; } ;
struct wm8350_data {struct wm8350_output out2; struct wm8350_output out1; } ;
struct soc_mixer_control {unsigned int reg; } ;
struct snd_soc_codec {struct wm8350_data* private_data; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;




 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_get_volsw_2r (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wm8350_get_volsw_2r(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 struct wm8350_data *wm8350_priv = codec->private_data;
 struct wm8350_output *out1 = &wm8350_priv->out1;
 struct wm8350_output *out2 = &wm8350_priv->out2;
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int reg = mc->reg;


 switch (reg) {
 case 129:
  ucontrol->value.integer.value[0] = out1->left_vol;
  ucontrol->value.integer.value[1] = out1->right_vol;
  return 0;

 case 128:
  ucontrol->value.integer.value[0] = out2->left_vol;
  ucontrol->value.integer.value[1] = out2->right_vol;
  return 0;

 default:
  break;
 }

 return snd_soc_get_volsw_2r(kcontrol, ucontrol);
}
