
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {scalar_t__ name; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int num_mixers; scalar_t__ beep_amp; int * mixers; } ;


 int ENOMEM ;
 int HDA_FIXUP_ACT_BUILD ;
 struct snd_kcontrol_new* alc_beep_mixer ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new const*,struct hda_codec*) ;
 int snd_hda_add_new_ctls (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,struct snd_kcontrol*) ;
 int snd_hda_gen_build_controls (struct hda_codec*) ;

__attribute__((used)) static int alc_build_controls(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;
 int i, err;

 err = snd_hda_gen_build_controls(codec);
 if (err < 0)
  return err;

 for (i = 0; i < spec->num_mixers; i++) {
  err = snd_hda_add_new_ctls(codec, spec->mixers[i]);
  if (err < 0)
   return err;
 }
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_BUILD);
 return 0;
}
