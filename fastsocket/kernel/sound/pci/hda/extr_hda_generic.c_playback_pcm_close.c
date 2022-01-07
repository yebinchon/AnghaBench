
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {int active_streams; int pcm_mutex; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int HDA_GEN_PCM_ACT_CLOSE ;
 int STREAM_MULTI_OUT ;
 int call_pcm_playback_hook (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int playback_pcm_close(struct hda_pcm_stream *hinfo,
         struct hda_codec *codec,
         struct snd_pcm_substream *substream)
{
 struct hda_gen_spec *spec = codec->spec;
 mutex_lock(&spec->pcm_mutex);
 spec->active_streams &= ~(1 << STREAM_MULTI_OUT);
 call_pcm_playback_hook(hinfo, codec, substream,
          HDA_GEN_PCM_ACT_CLOSE);
 mutex_unlock(&spec->pcm_mutex);
 return 0;
}
