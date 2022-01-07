
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8993_priv {int class_w_users; } ;
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dev; struct wm8993_priv* private_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM8993_CLASS_W_0 ;
 int WM8993_CP_DYN_FREQ ;
 int WM8993_CP_DYN_V ;
 int dev_dbg (int ,char*,...) ;
 struct snd_soc_dapm_widget* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_dapm_put_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int snd_soc_update_bits (struct snd_soc_codec*,int ,int,int) ;

__attribute__((used)) static int class_w_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_widget *widget = snd_kcontrol_chip(kcontrol);
 struct snd_soc_codec *codec = widget->codec;
 struct wm8993_priv *wm8993 = codec->private_data;
 int ret;


 if (ucontrol->value.integer.value[0] == 0) {
  if (wm8993->class_w_users == 0) {
   dev_dbg(codec->dev, "Disabling Class W\n");
   snd_soc_update_bits(codec, WM8993_CLASS_W_0,
         WM8993_CP_DYN_FREQ |
         WM8993_CP_DYN_V,
         0);
  }
  wm8993->class_w_users++;
 }


 ret = snd_soc_dapm_put_enum_double(kcontrol, ucontrol);


 if (ucontrol->value.integer.value[0] == 1) {
  if (wm8993->class_w_users == 1) {
   dev_dbg(codec->dev, "Enabling Class W\n");
   snd_soc_update_bits(codec, WM8993_CLASS_W_0,
         WM8993_CP_DYN_FREQ |
         WM8993_CP_DYN_V,
         WM8993_CP_DYN_FREQ |
         WM8993_CP_DYN_V);
  }
  wm8993->class_w_users--;
 }

 dev_dbg(codec->dev, "Indirect DAC use count now %d\n",
  wm8993->class_w_users);

 return ret;
}
