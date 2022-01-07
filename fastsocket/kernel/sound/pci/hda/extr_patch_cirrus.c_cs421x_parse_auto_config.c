
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_2__ {int autocfg; } ;
struct cs_spec {TYPE_1__ gen; } ;
typedef int hda_nid_t ;


 int CS4210_DAC_NID ;
 int fix_volume_caps (struct hda_codec*,int ) ;
 int parse_cs421x_digital (struct hda_codec*) ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,int *) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,int *,int *,int ) ;

__attribute__((used)) static int cs421x_parse_auto_config(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;
 hda_nid_t dac = CS4210_DAC_NID;
 int err;

 fix_volume_caps(codec, dac);

 err = snd_hda_parse_pin_defcfg(codec, &spec->gen.autocfg, ((void*)0), 0);
 if (err < 0)
  return err;

 err = snd_hda_gen_parse_auto_config(codec, &spec->gen.autocfg);
 if (err < 0)
  return err;

 parse_cs421x_digital(codec);
 return 0;
}
