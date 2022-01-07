
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int vendor_id; } ;


 int AC_VERB_GET_PROC_COEF ;
 int AC_VERB_SET_COEF_INDEX ;
 int AC_VERB_SET_PROC_COEF ;




 int alc888_coef_init (struct hda_codec*) ;
 int alc889_coef_init (struct hda_codec*) ;
 int alc_auto_setup_eapd (struct hda_codec*,int) ;
 int alc_gpio1_init_verbs ;
 int alc_gpio2_init_verbs ;
 int alc_gpio3_init_verbs ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,unsigned int) ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;

__attribute__((used)) static void alc_auto_init_amp(struct hda_codec *codec, int type)
{
 unsigned int tmp;

 alc_auto_setup_eapd(codec, 1);
 switch (type) {
 case 130:
  snd_hda_sequence_write(codec, alc_gpio1_init_verbs);
  break;
 case 129:
  snd_hda_sequence_write(codec, alc_gpio2_init_verbs);
  break;
 case 128:
  snd_hda_sequence_write(codec, alc_gpio3_init_verbs);
  break;
 case 131:
  switch (codec->vendor_id) {
  case 0x10ec0260:
   snd_hda_codec_write(codec, 0x1a, 0,
         AC_VERB_SET_COEF_INDEX, 7);
   tmp = snd_hda_codec_read(codec, 0x1a, 0,
       AC_VERB_GET_PROC_COEF, 0);
   snd_hda_codec_write(codec, 0x1a, 0,
         AC_VERB_SET_COEF_INDEX, 7);
   snd_hda_codec_write(codec, 0x1a, 0,
         AC_VERB_SET_PROC_COEF,
         tmp | 0x2010);
   break;
  case 0x10ec0262:
  case 0x10ec0880:
  case 0x10ec0882:
  case 0x10ec0883:
  case 0x10ec0885:
  case 0x10ec0887:

   alc889_coef_init(codec);
   break;
  case 0x10ec0888:
   alc888_coef_init(codec);
   break;
  }
  break;
 }
}
