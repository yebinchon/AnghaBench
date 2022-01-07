
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_verb {int member_0; int member_2; int member_1; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {scalar_t__ recording; } ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int snd_hda_sequence_write (struct hda_codec*,struct hda_verb const*) ;

__attribute__((used)) static void cxt5066_olpc_capture_cleanup(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 const struct hda_verb disable_mics[] = {

  {0x1a, AC_VERB_SET_PIN_WIDGET_CONTROL, 0},


  {0x1b, AC_VERB_SET_PIN_WIDGET_CONTROL, 0},


  {0x1e, AC_VERB_SET_PIN_WIDGET_CONTROL, 0},
  {},
 };

 snd_hda_sequence_write(codec, disable_mics);
 spec->recording = 0;
}
