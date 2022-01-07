
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_cvt {int cvt_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 struct hdmi_spec_per_cvt* get_cvt (struct hdmi_spec*,int ) ;
 int simple_hdmi_build_jack (struct hda_codec*,int ) ;
 int snd_hda_create_spdif_out_ctls (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int simple_playback_build_controls(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_spec_per_cvt *per_cvt;
 int err;

 per_cvt = get_cvt(spec, 0);
 err = snd_hda_create_spdif_out_ctls(codec, per_cvt->cvt_nid,
         per_cvt->cvt_nid);
 if (err < 0)
  return err;
 return simple_hdmi_build_jack(codec, 0);
}
