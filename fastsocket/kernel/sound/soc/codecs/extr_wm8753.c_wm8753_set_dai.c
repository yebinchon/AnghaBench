
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM8753_IOCTL ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm8753_read_reg_cache (struct snd_soc_codec*,int ) ;
 int wm8753_set_dai_mode (struct snd_soc_codec*,int) ;
 int wm8753_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8753_set_dai(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 int mode = wm8753_read_reg_cache(codec, WM8753_IOCTL);

 if (((mode & 0xc) >> 2) == ucontrol->value.integer.value[0])
  return 0;

 mode &= 0xfff3;
 mode |= (ucontrol->value.integer.value[0] << 2);

 wm8753_write(codec, WM8753_IOCTL, mode);
 wm8753_set_dai_mode(codec, ucontrol->value.integer.value[0]);
 return 1;
}
