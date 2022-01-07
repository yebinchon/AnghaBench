
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {int multiout; } ;


 int snd_hda_multi_out_dig_open (struct hda_codec*,int *) ;

__attribute__((used)) static int ad198x_dig_playback_pcm_open(struct hda_pcm_stream *hinfo,
     struct hda_codec *codec,
     struct snd_pcm_substream *substream)
{
 struct ad198x_spec *spec = codec->spec;
 return snd_hda_multi_out_dig_open(codec, &spec->multiout);
}
