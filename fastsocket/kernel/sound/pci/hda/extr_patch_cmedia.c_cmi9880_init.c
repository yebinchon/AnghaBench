
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct cmi_spec* spec; } ;
struct cmi_spec {scalar_t__ board_config; int multi_init; } ;


 scalar_t__ CMI_ALLOUT ;
 scalar_t__ CMI_AUTO ;
 int cmi9880_allout_init ;
 int cmi9880_basic_init ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;

__attribute__((used)) static int cmi9880_init(struct hda_codec *codec)
{
 struct cmi_spec *spec = codec->spec;
 if (spec->board_config == CMI_ALLOUT)
  snd_hda_sequence_write(codec, cmi9880_allout_init);
 else
  snd_hda_sequence_write(codec, cmi9880_basic_init);
 if (spec->board_config == CMI_AUTO)
  snd_hda_sequence_write(codec, spec->multi_init);
 return 0;
}
