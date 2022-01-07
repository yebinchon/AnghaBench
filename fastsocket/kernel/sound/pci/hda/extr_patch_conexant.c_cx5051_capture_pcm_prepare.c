
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {size_t cur_adc_idx; unsigned int cur_adc_stream_tag; unsigned int cur_adc_format; int cur_adc; int * adc_nids; } ;


 int snd_hda_codec_setup_stream (struct hda_codec*,int ,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int cx5051_capture_pcm_prepare(struct hda_pcm_stream *hinfo,
          struct hda_codec *codec,
          unsigned int stream_tag,
          unsigned int format,
          struct snd_pcm_substream *substream)
{
 struct conexant_spec *spec = codec->spec;
 spec->cur_adc = spec->adc_nids[spec->cur_adc_idx];
 spec->cur_adc_stream_tag = stream_tag;
 spec->cur_adc_format = format;
 snd_hda_codec_setup_stream(codec, spec->cur_adc, stream_tag, 0, format);
 return 0;
}
