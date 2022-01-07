
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wm8903_priv {int class_w_users; } ;
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct i2c_client* control_data; struct wm8903_priv* private_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct i2c_client {int dev; } ;


 int WM8903_CLASS_W_0 ;
 int WM8903_CP_DYN_FREQ ;
 int WM8903_CP_DYN_V ;
 int dev_dbg (int *,char*,...) ;
 struct snd_soc_dapm_widget* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_dapm_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8903_class_w_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_widget *widget = snd_kcontrol_chip(kcontrol);
 struct snd_soc_codec *codec = widget->codec;
 struct wm8903_priv *wm8903 = codec->private_data;
 struct i2c_client *i2c = codec->control_data;
 u16 reg;
 int ret;

 reg = snd_soc_read(codec, WM8903_CLASS_W_0);


 if (ucontrol->value.integer.value[0]) {
  if (wm8903->class_w_users == 0) {
   dev_dbg(&i2c->dev, "Disabling Class W\n");
   snd_soc_write(codec, WM8903_CLASS_W_0, reg &
         ~(WM8903_CP_DYN_FREQ | WM8903_CP_DYN_V));
  }
  wm8903->class_w_users++;
 }


 ret = snd_soc_dapm_put_volsw(kcontrol, ucontrol);


 if (!ucontrol->value.integer.value[0]) {
  if (wm8903->class_w_users == 1) {
   dev_dbg(&i2c->dev, "Enabling Class W\n");
   snd_soc_write(codec, WM8903_CLASS_W_0, reg |
         WM8903_CP_DYN_FREQ | WM8903_CP_DYN_V);
  }
  wm8903->class_w_users--;
 }

 dev_dbg(&i2c->dev, "Bypass use count now %d\n",
  wm8903->class_w_users);

 return ret;
}
