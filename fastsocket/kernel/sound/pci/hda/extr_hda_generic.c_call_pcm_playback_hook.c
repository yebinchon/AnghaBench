
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {int (* pcm_playback_hook ) (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int) ;} ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int stub1 (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int) ;

__attribute__((used)) static void call_pcm_playback_hook(struct hda_pcm_stream *hinfo,
       struct hda_codec *codec,
       struct snd_pcm_substream *substream,
       int action)
{
 struct hda_gen_spec *spec = codec->spec;
 if (spec->pcm_playback_hook)
  spec->pcm_playback_hook(hinfo, codec, substream, action);
}
