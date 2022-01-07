
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_verb {int member_0; int member_2; int member_1; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {scalar_t__ ext_mic_present; scalar_t__ dc_enable; int recording; } ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int CXT5066_OLPC_EXT_MIC_BIAS ;
 int PIN_IN ;
 int PIN_VREF80 ;
 int cxt5066_set_olpc_dc_bias (struct hda_codec*) ;
 int snd_hda_sequence_write (struct hda_codec*,struct hda_verb const*) ;
 int snd_hda_set_pin_ctl (struct hda_codec*,int,int ) ;

__attribute__((used)) static void cxt5066_olpc_select_mic(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 if (!spec->recording)
  return;

 if (spec->dc_enable) {


  const struct hda_verb enable_dc_mode[] = {

   {0x1b, AC_VERB_SET_PIN_WIDGET_CONTROL, 0},


   {0x1e, AC_VERB_SET_PIN_WIDGET_CONTROL, PIN_IN},
   {},
  };

  snd_hda_sequence_write(codec, enable_dc_mode);

  cxt5066_set_olpc_dc_bias(codec);
  return;
 }


 snd_hda_set_pin_ctl(codec, 0x1e, 0);


 snd_hda_set_pin_ctl(codec, 0x1a,
  spec->ext_mic_present ? CXT5066_OLPC_EXT_MIC_BIAS : 0);


 snd_hda_set_pin_ctl(codec, 0x1b,
  spec->ext_mic_present ? 0 : PIN_VREF80);
}
