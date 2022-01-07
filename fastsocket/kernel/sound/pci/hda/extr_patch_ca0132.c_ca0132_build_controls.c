
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int num_mixers; scalar_t__ dig_in; int multiout; scalar_t__ dig_out; int autocfg; int * mixers; } ;
struct TYPE_2__ {char* name; int direct; int nid; } ;


 int CRYSTAL_VOICE ;
 int IN_EFFECTS_COUNT ;
 int OUT_EFFECTS_COUNT ;
 int PLAY_ENHANCEMENT ;
 int add_fx_switch (struct hda_codec*,int ,char*,int) ;
 int add_tuning_ctls (struct hda_codec*) ;
 int add_voicefx (struct hda_codec*) ;
 TYPE_1__* ca0132_effects ;
 int snd_hda_add_new_ctls (struct hda_codec*,int ) ;
 int snd_hda_create_spdif_in_ctls (struct hda_codec*,scalar_t__) ;
 int snd_hda_create_spdif_out_ctls (struct hda_codec*,scalar_t__,scalar_t__) ;
 int snd_hda_create_spdif_share_sw (struct hda_codec*,int *) ;
 int snd_hda_jack_add_kctls (struct hda_codec*,int *) ;

__attribute__((used)) static int ca0132_build_controls(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 int i, num_fx;
 int err = 0;


 for (i = 0; i < spec->num_mixers; i++) {
  err = snd_hda_add_new_ctls(codec, spec->mixers[i]);
  if (err < 0)
   return err;
 }




 num_fx = OUT_EFFECTS_COUNT + IN_EFFECTS_COUNT;
 for (i = 0; i < num_fx; i++) {
  err = add_fx_switch(codec, ca0132_effects[i].nid,
        ca0132_effects[i].name,
        ca0132_effects[i].direct);
  if (err < 0)
   return err;
 }

 err = add_fx_switch(codec, PLAY_ENHANCEMENT, "PlayEnhancement", 0);
 if (err < 0)
  return err;

 err = add_fx_switch(codec, CRYSTAL_VOICE, "CrystalVoice", 1);
 if (err < 0)
  return err;

 add_voicefx(codec);





 err = snd_hda_jack_add_kctls(codec, &spec->autocfg);
 if (err < 0)
  return err;

 if (spec->dig_out) {
  err = snd_hda_create_spdif_out_ctls(codec, spec->dig_out,
          spec->dig_out);
  if (err < 0)
   return err;
  err = snd_hda_create_spdif_share_sw(codec, &spec->multiout);
  if (err < 0)
   return err;

 }

 if (spec->dig_in) {
  err = snd_hda_create_spdif_in_ctls(codec, spec->dig_in);
  if (err < 0)
   return err;
 }
 return 0;
}
