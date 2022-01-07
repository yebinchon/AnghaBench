
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int wm9713_set_pll (struct snd_soc_codec*,int,unsigned int,unsigned int) ;

__attribute__((used)) static int wm9713_set_dai_pll(struct snd_soc_dai *codec_dai,
  int pll_id, unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 return wm9713_set_pll(codec, pll_id, freq_in, freq_out);
}
