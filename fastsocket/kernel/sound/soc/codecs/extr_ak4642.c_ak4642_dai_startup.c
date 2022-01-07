
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int ak4642_write (struct snd_soc_codec*,int,int) ;

__attribute__((used)) static int ak4642_dai_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 struct snd_soc_codec *codec = dai->codec;

 if (is_play) {
  ak4642_write(codec, 0x05, 0x27);
  ak4642_write(codec, 0x0f, 0x09);
  ak4642_write(codec, 0x0e, 0x19);
  ak4642_write(codec, 0x09, 0x91);
  ak4642_write(codec, 0x0c, 0x91);
  ak4642_write(codec, 0x0a, 0x28);
  ak4642_write(codec, 0x0d, 0x28);
  ak4642_write(codec, 0x00, 0x64);
  ak4642_write(codec, 0x01, 0x3b);
  ak4642_write(codec, 0x01, 0x7b);
 } else {
  ak4642_write(codec, 0x05, 0x27);
  ak4642_write(codec, 0x02, 0x05);
  ak4642_write(codec, 0x06, 0x3c);
  ak4642_write(codec, 0x08, 0xe1);
  ak4642_write(codec, 0x0b, 0x00);
  ak4642_write(codec, 0x07, 0x21);
  ak4642_write(codec, 0x00, 0x41);
  ak4642_write(codec, 0x10, 0x01);
 }

 return 0;
}
