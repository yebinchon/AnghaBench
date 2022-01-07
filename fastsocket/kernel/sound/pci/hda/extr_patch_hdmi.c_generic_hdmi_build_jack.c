
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec_per_pin {int pin_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hdmi_str ;
struct TYPE_2__ {int device; } ;


 TYPE_1__* get_pcm_rec (struct hdmi_spec*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int is_jack_detectable (struct hda_codec*,int ) ;
 int snd_hda_jack_add_kctl (struct hda_codec*,int ,char*,int ) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static int generic_hdmi_build_jack(struct hda_codec *codec, int pin_idx)
{
 char hdmi_str[32] = "HDMI/DP";
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_spec_per_pin *per_pin = get_pin(spec, pin_idx);
 int pcmdev = get_pcm_rec(spec, pin_idx)->device;

 if (pcmdev > 0)
  sprintf(hdmi_str + strlen(hdmi_str), ",pcm=%d", pcmdev);
 if (!is_jack_detectable(codec, per_pin->pin_nid))
  strncat(hdmi_str, " Phantom",
   sizeof(hdmi_str) - strlen(hdmi_str) - 1);

 return snd_hda_jack_add_kctl(codec, per_pin->pin_nid, hdmi_str, 0);
}
