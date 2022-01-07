
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_verb {int member_0; int member_2; int member_1; } ;
struct hda_codec {int dummy; } ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_VERB_SET_CONNECT_SEL ;
 int AMP_OUT_UNMUTE ;
 int cxt5066_olpc_select_mic (struct hda_codec*) ;
 int snd_hda_sequence_write (struct hda_codec*,struct hda_verb const*) ;

__attribute__((used)) static void cxt5066_enable_dc(struct hda_codec *codec)
{
 const struct hda_verb enable_dc_mode[] = {

  {0x17, AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_UNMUTE},


  {0x17, AC_VERB_SET_CONNECT_SEL, 3},
  {}
 };


 snd_hda_sequence_write(codec, enable_dc_mode);
 cxt5066_olpc_select_mic(codec);
}
