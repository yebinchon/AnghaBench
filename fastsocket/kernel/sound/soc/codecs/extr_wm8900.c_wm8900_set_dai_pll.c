
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int codec; } ;


 int wm8900_set_fll (int ,int,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8900_set_dai_pll(struct snd_soc_dai *codec_dai,
  int pll_id, unsigned int freq_in, unsigned int freq_out)
{
 return wm8900_set_fll(codec_dai->codec, pll_id, freq_in, freq_out);
}
