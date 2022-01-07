
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wm8350_output {int active; int right_vol; int left_vol; } ;
struct wm8350_data {struct wm8350_output out2; struct wm8350_output out1; } ;
struct soc_mixer_control {unsigned int reg; } ;
struct snd_soc_codec {struct wm8350_data* private_data; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;




 int WM8350_OUT1_VU ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_put_volsw_2r (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int wm8350_codec_read (struct snd_soc_codec*,unsigned int) ;
 int wm8350_codec_write (struct snd_soc_codec*,unsigned int,int) ;

__attribute__((used)) static int wm8350_put_volsw_2r_vu(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 struct wm8350_data *wm8350_priv = codec->private_data;
 struct wm8350_output *out = ((void*)0);
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 int ret;
 unsigned int reg = mc->reg;
 u16 val;




 switch (reg) {
 case 129:
  out = &wm8350_priv->out1;
  break;
 case 128:
  out = &wm8350_priv->out2;
  break;
 default:
  break;
 }

 if (out) {
  out->left_vol = ucontrol->value.integer.value[0];
  out->right_vol = ucontrol->value.integer.value[1];
  if (!out->active)
   return 1;
 }

 ret = snd_soc_put_volsw_2r(kcontrol, ucontrol);
 if (ret < 0)
  return ret;


 val = wm8350_codec_read(codec, reg);
 wm8350_codec_write(codec, reg, val | WM8350_OUT1_VU);
 return 1;
}
