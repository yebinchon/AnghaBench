
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9081_priv {int sysclk_source; unsigned int mclk_rate; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct wm9081_priv* private_data; } ;


 int EINVAL ;



__attribute__((used)) static int wm9081_set_sysclk(struct snd_soc_dai *codec_dai,
        int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct wm9081_priv *wm9081 = codec->private_data;

 switch (clk_id) {
 case 128:
 case 129:
  wm9081->sysclk_source = clk_id;
  wm9081->mclk_rate = freq;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
