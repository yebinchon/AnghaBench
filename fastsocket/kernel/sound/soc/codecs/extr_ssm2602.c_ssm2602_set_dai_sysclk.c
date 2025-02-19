
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {unsigned int sysclk; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct ssm2602_priv* private_data; } ;


 int EINVAL ;

__attribute__((used)) static int ssm2602_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct ssm2602_priv *ssm2602 = codec->private_data;
 switch (freq) {
 case 11289600:
 case 12000000:
 case 12288000:
 case 16934400:
 case 18432000:
  ssm2602->sysclk = freq;
  return 0;
 }
 return -EINVAL;
}
