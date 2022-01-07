
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_COEF_INDEX ;
 int AC_VERB_SET_PROC_COEF ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;
 int snd_hda_gen_update_outputs (struct hda_codec*) ;

__attribute__((used)) static void alc269_quanta_automute(struct hda_codec *codec)
{
 snd_hda_gen_update_outputs(codec);

 snd_hda_codec_write(codec, 0x20, 0,
   AC_VERB_SET_COEF_INDEX, 0x0c);
 snd_hda_codec_write(codec, 0x20, 0,
   AC_VERB_SET_PROC_COEF, 0x680);

 snd_hda_codec_write(codec, 0x20, 0,
   AC_VERB_SET_COEF_INDEX, 0x0c);
 snd_hda_codec_write(codec, 0x20, 0,
   AC_VERB_SET_PROC_COEF, 0x480);
}
