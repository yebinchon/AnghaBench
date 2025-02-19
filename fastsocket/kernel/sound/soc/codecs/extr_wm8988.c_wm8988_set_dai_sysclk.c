
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8988_priv {unsigned int sysclk; int * sysclk_constraints; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct wm8988_priv* private_data; } ;


 int EINVAL ;
 int constraints_112896 ;
 int constraints_12 ;
 int constraints_12288 ;

__attribute__((used)) static int wm8988_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct wm8988_priv *wm8988 = codec->private_data;

 switch (freq) {
 case 11289600:
 case 18432000:
 case 22579200:
 case 36864000:
  wm8988->sysclk_constraints = &constraints_112896;
  wm8988->sysclk = freq;
  return 0;

 case 12288000:
 case 16934400:
 case 24576000:
 case 33868800:
  wm8988->sysclk_constraints = &constraints_12288;
  wm8988->sysclk = freq;
  return 0;

 case 12000000:
 case 24000000:
  wm8988->sysclk_constraints = &constraints_12;
  wm8988->sysclk = freq;
  return 0;
 }
 return -EINVAL;
}
