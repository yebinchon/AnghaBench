
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {scalar_t__ cur_adc; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int snd_hda_codec_cleanup_stream (struct hda_codec*,scalar_t__) ;

__attribute__((used)) static int dyn_adc_capture_pcm_cleanup(struct hda_pcm_stream *hinfo,
           struct hda_codec *codec,
           struct snd_pcm_substream *substream)
{
 struct hda_gen_spec *spec = codec->spec;
 snd_hda_codec_cleanup_stream(codec, spec->cur_adc);
 spec->cur_adc = 0;
 return 0;
}
