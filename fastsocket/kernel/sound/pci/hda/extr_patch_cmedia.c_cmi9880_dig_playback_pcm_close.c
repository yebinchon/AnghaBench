
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct cmi_spec {int multiout; } ;


 int snd_hda_multi_out_dig_close (struct hda_codec*,int *) ;

__attribute__((used)) static int cmi9880_dig_playback_pcm_close(struct hda_pcm_stream *hinfo,
       struct hda_codec *codec,
       struct snd_pcm_substream *substream)
{
 struct cmi_spec *spec = codec->spec;
 return snd_hda_multi_out_dig_close(codec, &spec->multiout);
}
