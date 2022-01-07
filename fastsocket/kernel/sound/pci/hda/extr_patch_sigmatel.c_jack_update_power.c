
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int num_pwrs; int power_map_bits; scalar_t__* pwr_nids; } ;
struct hda_jack_tbl {scalar_t__ action; scalar_t__ nid; } ;
struct hda_codec {int afg; struct sigmatel_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_VERB_IDT_SET_POWER_MAP ;
 scalar_t__ HDA_GEN_LAST_EVENT ;
 scalar_t__ STAC_PWR_EVENT ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_jack_detect (struct hda_codec*,scalar_t__) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,scalar_t__) ;
 int stac_toggle_power_map (struct hda_codec*,scalar_t__,int ,int) ;

__attribute__((used)) static void jack_update_power(struct hda_codec *codec,
         struct hda_jack_tbl *jack)
{
 struct sigmatel_spec *spec = codec->spec;
 int i;

 if (!spec->num_pwrs)
  return;

 if (jack && jack->nid) {
  stac_toggle_power_map(codec, jack->nid,
          snd_hda_jack_detect(codec, jack->nid),
          1);
  return;
 }


 for (i = 0; i < spec->num_pwrs; i++) {
  hda_nid_t nid = spec->pwr_nids[i];
  jack = snd_hda_jack_tbl_get(codec, nid);
  if (!jack || !jack->action)
   continue;
  if (jack->action == STAC_PWR_EVENT ||
      jack->action <= HDA_GEN_LAST_EVENT)
   stac_toggle_power_map(codec, nid,
           snd_hda_jack_detect(codec, nid),
           0);
 }

 snd_hda_codec_write(codec, codec->afg, 0, AC_VERB_IDT_SET_POWER_MAP,
       spec->power_map_bits);
}
