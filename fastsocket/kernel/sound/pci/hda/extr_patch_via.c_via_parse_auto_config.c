
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autocfg; int * extra_out_badness; int * main_out_badness; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {struct via_spec* spec; } ;


 int snd_hda_gen_parse_auto_config (struct hda_codec*,int *) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,int *,int *,int ) ;
 int via_extra_out_badness ;
 int via_main_out_badness ;
 int via_set_jack_unsol_events (struct hda_codec*) ;

__attribute__((used)) static int via_parse_auto_config(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 int err;

 spec->gen.main_out_badness = &via_main_out_badness;
 spec->gen.extra_out_badness = &via_extra_out_badness;

 err = snd_hda_parse_pin_defcfg(codec, &spec->gen.autocfg, ((void*)0), 0);
 if (err < 0)
  return err;

 err = snd_hda_gen_parse_auto_config(codec, &spec->gen.autocfg);
 if (err < 0)
  return err;

 via_set_jack_unsol_events(codec);
 return 0;
}
