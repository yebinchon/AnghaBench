
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int pin_nid; } ;
struct hdmi_spec {int num_pins; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int hdmi_init_pin (struct hda_codec*,int ) ;
 int snd_hda_jack_detect_enable (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int generic_hdmi_init(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 int pin_idx;

 for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
  struct hdmi_spec_per_pin *per_pin = get_pin(spec, pin_idx);
  hda_nid_t pin_nid = per_pin->pin_nid;

  hdmi_init_pin(codec, pin_nid);
  snd_hda_jack_detect_enable(codec, pin_nid, pin_nid);
 }
 return 0;
}
