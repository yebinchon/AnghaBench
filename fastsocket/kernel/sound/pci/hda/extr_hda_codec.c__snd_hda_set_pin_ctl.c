
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int snd_hda_codec_set_pin_target (struct hda_codec*,int ,unsigned int) ;
 int snd_hda_codec_update_cache (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;
 unsigned int snd_hda_correct_pin_ctl (struct hda_codec*,int ,unsigned int) ;

int _snd_hda_set_pin_ctl(struct hda_codec *codec, hda_nid_t pin,
    unsigned int val, bool cached)
{
 val = snd_hda_correct_pin_ctl(codec, pin, val);
 snd_hda_codec_set_pin_target(codec, pin, val);
 if (cached)
  return snd_hda_codec_update_cache(codec, pin, 0,
    AC_VERB_SET_PIN_WIDGET_CONTROL, val);
 else
  return snd_hda_codec_write(codec, pin, 0,
        AC_VERB_SET_PIN_WIDGET_CONTROL, val);
}
