
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ number; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {int dummy; } ;


 int snd_hda_codec_cleanup_stream (struct hda_codec*,scalar_t__) ;

__attribute__((used)) static int ad1984_pcm_dmic_cleanup(struct hda_pcm_stream *hinfo,
       struct hda_codec *codec,
       struct snd_pcm_substream *substream)
{
 snd_hda_codec_cleanup_stream(codec, 0x05 + substream->number);
 return 0;
}
