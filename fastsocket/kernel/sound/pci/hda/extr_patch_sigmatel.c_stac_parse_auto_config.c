
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hook; } ;
struct TYPE_6__ {scalar_t__ beep_nid; TYPE_2__ vmaster_mute; int * vmaster_tlv; int autocfg; int mic_autoswitch_hook; int line_automute_hook; int hp_automute_hook; int automute_hook; int pcm_capture_hook; int pcm_playback_hook; } ;
struct sigmatel_spec {scalar_t__ anabeep_nid; scalar_t__ have_spdif_mux; scalar_t__ aloopback_ctl; TYPE_3__ gen; scalar_t__ gpio_led; int linear_tone_beep; scalar_t__ headset_jack; } ;
struct hda_codec {TYPE_1__* beep; struct sigmatel_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;
struct TYPE_4__ {int linear_tone; } ;


 unsigned int AC_AMPCAP_MUTE ;
 int ENOMEM ;
 int HDA_OUTPUT ;
 int HDA_PINCFG_HEADSET_MIC ;
 int TLV_DB_SCALE_MUTE ;
 unsigned int query_amp_caps (struct hda_codec*,scalar_t__,int ) ;
 int snd_hda_gen_add_kctl (TYPE_3__*,int *,scalar_t__) ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,int *) ;
 int snd_hda_get_bool_hint (struct hda_codec*,char*) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,int *,int *,int) ;
 int stac_auto_create_beep_ctls (struct hda_codec*,scalar_t__) ;
 int stac_beep_switch_ctl (struct hda_codec*) ;
 int stac_capture_pcm_hook ;
 int stac_create_spdif_mux_ctls (struct hda_codec*) ;
 int stac_hp_automute ;
 int stac_init_power_map (struct hda_codec*) ;
 int stac_line_automute ;
 int stac_mic_autoswitch ;
 int stac_playback_pcm_hook ;
 int stac_update_outputs ;
 int stac_vmaster_hook ;

__attribute__((used)) static int stac_parse_auto_config(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;
 int err;
 int flags = 0;

 if (spec->headset_jack)
  flags |= HDA_PINCFG_HEADSET_MIC;

 err = snd_hda_parse_pin_defcfg(codec, &spec->gen.autocfg, ((void*)0), flags);
 if (err < 0)
  return err;


 spec->gen.pcm_playback_hook = stac_playback_pcm_hook;
 spec->gen.pcm_capture_hook = stac_capture_pcm_hook;

 spec->gen.automute_hook = stac_update_outputs;
 spec->gen.hp_automute_hook = stac_hp_automute;
 spec->gen.line_automute_hook = stac_line_automute;
 spec->gen.mic_autoswitch_hook = stac_mic_autoswitch;

 err = snd_hda_gen_parse_auto_config(codec, &spec->gen.autocfg);
 if (err < 0)
  return err;


 spec->gen.vmaster_tlv[3] |= TLV_DB_SCALE_MUTE;


 if (spec->anabeep_nid > 0) {
  err = stac_auto_create_beep_ctls(codec,
       spec->anabeep_nid);
  if (err < 0)
   return err;
 }
 if (spec->gpio_led)
  spec->gen.vmaster_mute.hook = stac_vmaster_hook;

 if (spec->aloopback_ctl &&
     snd_hda_get_bool_hint(codec, "loopback") == 1) {
  if (!snd_hda_gen_add_kctl(&spec->gen, ((void*)0), spec->aloopback_ctl))
   return -ENOMEM;
 }

 if (spec->have_spdif_mux) {
  err = stac_create_spdif_mux_ctls(codec);
  if (err < 0)
   return err;
 }

 stac_init_power_map(codec);

 return 0;
}
