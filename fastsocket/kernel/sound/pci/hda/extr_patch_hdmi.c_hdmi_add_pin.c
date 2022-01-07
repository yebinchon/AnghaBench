
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int non_pcm; int pin_nid; } ;
struct hdmi_spec {int num_pins; int pins; } ;
struct hda_codec {int vendor_id; struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 scalar_t__ AC_JACK_PORT_NONE ;
 unsigned int AC_PINCAP_DP ;
 unsigned int AC_PINCAP_HDMI ;
 int ENOMEM ;
 scalar_t__ get_defcfg_connect (unsigned int) ;
 int hdmi_read_pin_conn (struct hda_codec*,int) ;
 int intel_haswell_fixup_connect_list (struct hda_codec*,int ) ;
 struct hdmi_spec_per_pin* snd_array_new (int *) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static int hdmi_add_pin(struct hda_codec *codec, hda_nid_t pin_nid)
{
 struct hdmi_spec *spec = codec->spec;
 unsigned int caps, config;
 int pin_idx;
 struct hdmi_spec_per_pin *per_pin;
 int err;

 caps = snd_hda_query_pin_caps(codec, pin_nid);
 if (!(caps & (AC_PINCAP_HDMI | AC_PINCAP_DP)))
  return 0;

 config = snd_hda_codec_get_pincfg(codec, pin_nid);
 if (get_defcfg_connect(config) == AC_JACK_PORT_NONE)
  return 0;

 if (codec->vendor_id == 0x80862807)
  intel_haswell_fixup_connect_list(codec, pin_nid);

 pin_idx = spec->num_pins;
 per_pin = snd_array_new(&spec->pins);
 if (!per_pin)
  return -ENOMEM;

 per_pin->pin_nid = pin_nid;
 per_pin->non_pcm = 0;

 err = hdmi_read_pin_conn(codec, pin_idx);
 if (err < 0)
  return err;

 spec->num_pins++;

 return 0;
}
