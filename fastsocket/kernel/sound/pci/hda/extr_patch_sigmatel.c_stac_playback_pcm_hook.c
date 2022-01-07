
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct sigmatel_spec {scalar_t__ stream_delay; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_GEN_PCM_ACT_OPEN ;
 int msleep (scalar_t__) ;

__attribute__((used)) static void stac_playback_pcm_hook(struct hda_pcm_stream *hinfo,
       struct hda_codec *codec,
       struct snd_pcm_substream *substream,
       int action)
{
 struct sigmatel_spec *spec = codec->spec;
 if (action == HDA_GEN_PCM_ACT_OPEN && spec->stream_delay)
  msleep(spec->stream_delay);
}
