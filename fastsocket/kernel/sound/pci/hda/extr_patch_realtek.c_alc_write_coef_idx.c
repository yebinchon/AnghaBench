
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_COEF_INDEX ;
 int AC_VERB_SET_PROC_COEF ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,unsigned int) ;

__attribute__((used)) static void alc_write_coef_idx(struct hda_codec *codec, unsigned int coef_idx,
       unsigned int coef_val)
{
 snd_hda_codec_write(codec, 0x20, 0, AC_VERB_SET_COEF_INDEX,
       coef_idx);
 snd_hda_codec_write(codec, 0x20, 0, AC_VERB_SET_PROC_COEF,
       coef_val);
}
