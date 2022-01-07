
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_GET_PROC_COEF ;
 int AC_VERB_SET_COEF_INDEX ;
 int AC_VERB_SET_PROC_COEF ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,unsigned int) ;

__attribute__((used)) static void alc889_coef_init(struct hda_codec *codec)
{
 unsigned int tmp;

 snd_hda_codec_write(codec, 0x20, 0, AC_VERB_SET_COEF_INDEX, 7);
 tmp = snd_hda_codec_read(codec, 0x20, 0, AC_VERB_GET_PROC_COEF, 0);
 snd_hda_codec_write(codec, 0x20, 0, AC_VERB_SET_COEF_INDEX, 7);
 snd_hda_codec_write(codec, 0x20, 0, AC_VERB_SET_PROC_COEF, tmp|0x2010);
}
