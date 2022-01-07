
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int pin_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int AC_WCAP_OUT_AMP ;
 int AMP_OUT_UNMUTE ;
 int PIN_OUT ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int ) ;
 int get_wcaps (struct hda_codec*,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_jack_detect_enable (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int simple_playback_init(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_spec_per_pin *per_pin = get_pin(spec, 0);
 hda_nid_t pin = per_pin->pin_nid;

 snd_hda_codec_write(codec, pin, 0,
       AC_VERB_SET_PIN_WIDGET_CONTROL, PIN_OUT);

 if (get_wcaps(codec, pin) & AC_WCAP_OUT_AMP)
  snd_hda_codec_write(codec, pin, 0, AC_VERB_SET_AMP_GAIN_MUTE,
        AMP_OUT_UNMUTE);
 snd_hda_jack_detect_enable(codec, pin, pin);
 return 0;
}
