
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;
 int WM8753_CLOCK ;
 int wm8753_pcm_set_dai_fmt (struct snd_soc_dai*,unsigned int) ;
 int wm8753_read_reg_cache (struct snd_soc_codec*,int ) ;
 scalar_t__ wm8753_vdac_adc_set_dai_fmt (struct snd_soc_dai*,unsigned int) ;
 int wm8753_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8753_mode1v_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 clock;


 clock = wm8753_read_reg_cache(codec, WM8753_CLOCK) & 0xfffb;
 wm8753_write(codec, WM8753_CLOCK, clock);

 if (wm8753_vdac_adc_set_dai_fmt(codec_dai, fmt) < 0)
  return -EINVAL;
 return wm8753_pcm_set_dai_fmt(codec_dai, fmt);
}
