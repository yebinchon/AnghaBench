
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int init_amp; int (* init_hook ) (struct hda_codec*) ;} ;


 int HDA_FIXUP_ACT_INIT ;
 int alc_auto_init_amp (struct hda_codec*,int ) ;
 int alc_fix_pll (struct hda_codec*) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_gen_init (struct hda_codec*) ;
 int stub1 (struct hda_codec*) ;

__attribute__((used)) static int alc_init(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 if (spec->init_hook)
  spec->init_hook(codec);

 alc_fix_pll(codec);
 alc_auto_init_amp(codec, spec->init_amp);

 snd_hda_gen_init(codec);

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_INIT);

 return 0;
}
