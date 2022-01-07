
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {int * adc_nids; } ;


 int snd_hda_codec_cleanup_stream (struct hda_codec*,int ) ;

__attribute__((used)) static int ad198x_capture_pcm_cleanup(struct hda_pcm_stream *hinfo,
          struct hda_codec *codec,
          struct snd_pcm_substream *substream)
{
 struct ad198x_spec *spec = codec->spec;
 snd_hda_codec_cleanup_stream(codec, spec->adc_nids[substream->number]);
 return 0;
}
