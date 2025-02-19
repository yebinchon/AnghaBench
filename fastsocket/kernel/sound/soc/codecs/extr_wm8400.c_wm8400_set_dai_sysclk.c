
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400_priv {unsigned int sysclk; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct wm8400_priv* private_data; } ;



__attribute__((used)) static int wm8400_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct wm8400_priv *wm8400 = codec->private_data;

 wm8400->sysclk = freq;
 return 0;
}
