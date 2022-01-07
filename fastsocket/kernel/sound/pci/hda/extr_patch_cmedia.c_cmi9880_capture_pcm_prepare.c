
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct cmi_spec {int * adc_nids; } ;


 int snd_hda_codec_setup_stream (struct hda_codec*,int ,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int cmi9880_capture_pcm_prepare(struct hda_pcm_stream *hinfo,
          struct hda_codec *codec,
          unsigned int stream_tag,
          unsigned int format,
          struct snd_pcm_substream *substream)
{
 struct cmi_spec *spec = codec->spec;

 snd_hda_codec_setup_stream(codec, spec->adc_nids[substream->number],
       stream_tag, 0, format);
 return 0;
}
