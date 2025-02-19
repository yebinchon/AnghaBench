
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int num_pwrs; scalar_t__* pwr_nids; scalar_t__ vref_mute_led_nid; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 unsigned int AC_JACK_PORT_COMPLEX ;
 unsigned int AC_JACK_PORT_NONE ;
 int STAC_PWR_EVENT ;
 unsigned int get_defcfg_connect (unsigned int) ;
 scalar_t__ is_jack_detectable (struct hda_codec*,scalar_t__) ;
 int jack_update_power ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,scalar_t__) ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,scalar_t__,int ,int ) ;
 scalar_t__ snd_hda_jack_tbl_get (struct hda_codec*,scalar_t__) ;
 int stac_toggle_power_map (struct hda_codec*,scalar_t__,int,int) ;

__attribute__((used)) static void stac_init_power_map(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;
 int i;

 for (i = 0; i < spec->num_pwrs; i++) {
  hda_nid_t nid = spec->pwr_nids[i];
  unsigned int def_conf = snd_hda_codec_get_pincfg(codec, nid);
  def_conf = get_defcfg_connect(def_conf);
  if (snd_hda_jack_tbl_get(codec, nid))
   continue;
  if (def_conf == AC_JACK_PORT_COMPLEX &&
      !(spec->vref_mute_led_nid == nid ||
        is_jack_detectable(codec, nid))) {
   snd_hda_jack_detect_enable_callback(codec, nid,
           STAC_PWR_EVENT,
           jack_update_power);
  } else {
   if (def_conf == AC_JACK_PORT_NONE)
    stac_toggle_power_map(codec, nid, 0, 0);
   else
    stac_toggle_power_map(codec, nid, 1, 0);
  }
 }
}
