
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 scalar_t__ wm8753_hdac_set_dai_fmt (struct snd_soc_dai*,unsigned int) ;
 int wm8753_i2s_set_dai_fmt (struct snd_soc_dai*,unsigned int) ;

__attribute__((used)) static int wm8753_mode1h_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 if (wm8753_hdac_set_dai_fmt(codec_dai, fmt) < 0)
  return -EINVAL;
 return wm8753_i2s_set_dai_fmt(codec_dai, fmt);
}
