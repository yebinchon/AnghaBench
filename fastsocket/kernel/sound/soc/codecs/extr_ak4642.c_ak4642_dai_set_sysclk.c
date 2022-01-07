
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct ak4642_priv* private_data; } ;
struct ak4642_priv {unsigned int sysclk; } ;



__attribute__((used)) static int ak4642_dai_set_sysclk(struct snd_soc_dai *codec_dai,
 int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct ak4642_priv *ak4642 = codec->private_data;

 ak4642->sysclk = freq;
 return 0;
}
