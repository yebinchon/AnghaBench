
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct ak4535_priv* private_data; } ;
struct ak4535_priv {unsigned int sysclk; } ;



__attribute__((used)) static int ak4535_set_dai_sysclk(struct snd_soc_dai *codec_dai,
 int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct ak4535_priv *ak4535 = codec->private_data;

 ak4535->sysclk = freq;
 return 0;
}
