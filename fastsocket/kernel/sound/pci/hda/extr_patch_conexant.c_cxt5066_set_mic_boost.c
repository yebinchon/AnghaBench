
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {size_t mic_boost; scalar_t__ thinkpad; scalar_t__ ideapad; } ;
struct TYPE_4__ {TYPE_1__* items; } ;
struct TYPE_3__ {int index; } ;


 int AC_AMP_SET_INPUT ;
 int AC_AMP_SET_LEFT ;
 int AC_AMP_SET_OUTPUT ;
 int AC_AMP_SET_RIGHT ;
 int AC_VERB_SET_AMP_GAIN_MUTE ;
 TYPE_2__ cxt5066_analog_mic_boost ;
 int snd_hda_codec_write_cache (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void cxt5066_set_mic_boost(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 snd_hda_codec_write_cache(codec, 0x17, 0,
  AC_VERB_SET_AMP_GAIN_MUTE,
  AC_AMP_SET_RIGHT | AC_AMP_SET_LEFT | AC_AMP_SET_OUTPUT |
   cxt5066_analog_mic_boost.items[spec->mic_boost].index);
 if (spec->ideapad || spec->thinkpad) {

  snd_hda_codec_write_cache(codec, 0x23, 0,
   AC_VERB_SET_AMP_GAIN_MUTE,
   AC_AMP_SET_RIGHT | AC_AMP_SET_LEFT | AC_AMP_SET_INPUT |
    cxt5066_analog_mic_boost.
     items[spec->mic_boost].index);
 }
}
