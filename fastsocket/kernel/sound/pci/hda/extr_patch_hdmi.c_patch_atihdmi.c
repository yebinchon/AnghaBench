
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prepare; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct hdmi_spec {TYPE_2__ pcm_playback; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int ATIHDMI_CVT_NID ;
 int ATIHDMI_PIN_NID ;
 int atihdmi_playback_pcm_prepare ;
 int patch_simple_hdmi (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int patch_atihdmi(struct hda_codec *codec)
{
 struct hdmi_spec *spec;
 int err = patch_simple_hdmi(codec, ATIHDMI_CVT_NID, ATIHDMI_PIN_NID);
 if (err < 0)
  return err;
 spec = codec->spec;
 spec->pcm_playback.ops.prepare = atihdmi_playback_pcm_prepare;
 return 0;
}
