
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int patch_ops; struct cmi_spec* spec; } ;
struct auto_pin_cfg {int dummy; } ;
struct TYPE_2__ {struct auto_pin_cfg autocfg; } ;
struct cmi_spec {TYPE_1__ gen; } ;


 int cmi_auto_patch_ops ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,struct auto_pin_cfg*) ;
 int snd_hda_gen_spec_init (TYPE_1__*) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,struct auto_pin_cfg*,int *,int ) ;

__attribute__((used)) static int cmi_parse_auto_config(struct hda_codec *codec)
{
 struct cmi_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->gen.autocfg;
 int err;

 snd_hda_gen_spec_init(&spec->gen);

 err = snd_hda_parse_pin_defcfg(codec, cfg, ((void*)0), 0);
 if (err < 0)
  return err;
 err = snd_hda_gen_parse_auto_config(codec, cfg);
 if (err < 0)
  return err;

 codec->patch_ops = cmi_auto_patch_ops;
 return 0;
}
