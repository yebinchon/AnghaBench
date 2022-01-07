
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int * adc_nids; int (* capture_prepare ) (struct hda_codec*) ;} ;


 int snd_hda_codec_setup_stream (struct hda_codec*,int ,unsigned int,int ,unsigned int) ;
 int stub1 (struct hda_codec*) ;

__attribute__((used)) static int conexant_capture_pcm_prepare(struct hda_pcm_stream *hinfo,
          struct hda_codec *codec,
          unsigned int stream_tag,
          unsigned int format,
          struct snd_pcm_substream *substream)
{
 struct conexant_spec *spec = codec->spec;
 if (spec->capture_prepare)
  spec->capture_prepare(codec);
 snd_hda_codec_setup_stream(codec, spec->adc_nids[substream->number],
       stream_tag, 0, format);
 return 0;
}
