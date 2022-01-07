
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int count; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct TYPE_2__ {int share_spdif; scalar_t__ dig_out_nid; } ;
struct cmi_spec {int * adc_nids; scalar_t__ dig_in_nid; TYPE_1__ multiout; scalar_t__ channel_modes; } ;


 int cmi9880_basic_mixer ;
 int cmi9880_ch_mode_mixer ;
 int snd_hda_add_new_ctls (struct hda_codec*,int ) ;
 int snd_hda_add_nid (struct hda_codec*,struct snd_kcontrol*,int,int ) ;
 int snd_hda_create_spdif_in_ctls (struct hda_codec*,scalar_t__) ;
 int snd_hda_create_spdif_out_ctls (struct hda_codec*,scalar_t__,scalar_t__) ;
 int snd_hda_create_spdif_share_sw (struct hda_codec*,TYPE_1__*) ;
 struct snd_kcontrol* snd_hda_find_mixer_ctl (struct hda_codec*,char*) ;

__attribute__((used)) static int cmi9880_build_controls(struct hda_codec *codec)
{
 struct cmi_spec *spec = codec->spec;
 struct snd_kcontrol *kctl;
 int i, err;

 err = snd_hda_add_new_ctls(codec, cmi9880_basic_mixer);
 if (err < 0)
  return err;
 if (spec->channel_modes) {
  err = snd_hda_add_new_ctls(codec, cmi9880_ch_mode_mixer);
  if (err < 0)
   return err;
 }
 if (spec->multiout.dig_out_nid) {
  err = snd_hda_create_spdif_out_ctls(codec,
          spec->multiout.dig_out_nid,
          spec->multiout.dig_out_nid);
  if (err < 0)
   return err;
  err = snd_hda_create_spdif_share_sw(codec,
          &spec->multiout);
  if (err < 0)
   return err;
  spec->multiout.share_spdif = 1;
 }
 if (spec->dig_in_nid) {
  err = snd_hda_create_spdif_in_ctls(codec, spec->dig_in_nid);
  if (err < 0)
   return err;
 }


 kctl = snd_hda_find_mixer_ctl(codec, "Capture Source");
 for (i = 0; kctl && i < kctl->count; i++) {
  err = snd_hda_add_nid(codec, kctl, i, spec->adc_nids[i]);
  if (err < 0)
   return err;
 }
 return 0;
}
