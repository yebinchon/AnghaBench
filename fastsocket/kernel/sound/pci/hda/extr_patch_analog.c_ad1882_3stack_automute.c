
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int PIN_OUT ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int ) ;
 int snd_hda_jack_detect (struct hda_codec*,int) ;

__attribute__((used)) static void ad1882_3stack_automute(struct hda_codec *codec)
{
 bool mute = snd_hda_jack_detect(codec, 0x11);
 snd_hda_codec_write(codec, 0x12, 0, AC_VERB_SET_PIN_WIDGET_CONTROL,
       mute ? 0 : PIN_OUT);
}
