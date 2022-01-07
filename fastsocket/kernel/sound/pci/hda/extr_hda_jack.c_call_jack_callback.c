
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int (* callback ) (struct hda_codec*,struct hda_jack_tbl*) ;scalar_t__ gated_jack; } ;
struct hda_codec {int dummy; } ;


 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,scalar_t__) ;
 int stub1 (struct hda_codec*,struct hda_jack_tbl*) ;
 int stub2 (struct hda_codec*,struct hda_jack_tbl*) ;

__attribute__((used)) static void call_jack_callback(struct hda_codec *codec,
          struct hda_jack_tbl *jack)
{
 if (jack->callback)
  jack->callback(codec, jack);
 if (jack->gated_jack) {
  struct hda_jack_tbl *gated =
   snd_hda_jack_tbl_get(codec, jack->gated_jack);
  if (gated && gated->callback)
   gated->callback(codec, gated);
 }
}
