
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int * stream_analog_capture; int * stream_analog_playback; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int HDA_FIXUP_ACT_PROBE ;
 int alc269_44k_pcm_analog_capture ;
 int alc269_44k_pcm_analog_playback ;

__attribute__((used)) static void alc269_fixup_pcm_44k(struct hda_codec *codec,
     const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 if (action != HDA_FIXUP_ACT_PROBE)
  return;




 spec->gen.stream_analog_playback = &alc269_44k_pcm_analog_playback;
 spec->gen.stream_analog_capture = &alc269_44k_pcm_analog_capture;
}
