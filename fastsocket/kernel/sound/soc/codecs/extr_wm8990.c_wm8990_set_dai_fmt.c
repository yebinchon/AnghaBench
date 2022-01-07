
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int WM8990_AIF_FMT_MASK ;
 int WM8990_AIF_LRCLK_INV ;
 int WM8990_AIF_MSTR1 ;
 int WM8990_AIF_TMF_DSP ;
 int WM8990_AIF_TMF_I2S ;
 int WM8990_AIF_TMF_LEFTJ ;
 int WM8990_AIF_TMF_RIGHTJ ;
 int WM8990_AUDIO_INTERFACE_1 ;
 int WM8990_AUDIO_INTERFACE_3 ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8990_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 audio1, audio3;

 audio1 = snd_soc_read(codec, WM8990_AUDIO_INTERFACE_1);
 audio3 = snd_soc_read(codec, WM8990_AUDIO_INTERFACE_3);


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  audio3 &= ~WM8990_AIF_MSTR1;
  break;
 case 134:
  audio3 |= WM8990_AIF_MSTR1;
  break;
 default:
  return -EINVAL;
 }

 audio1 &= ~WM8990_AIF_FMT_MASK;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  audio1 |= WM8990_AIF_TMF_I2S;
  audio1 &= ~WM8990_AIF_LRCLK_INV;
  break;
 case 128:
  audio1 |= WM8990_AIF_TMF_RIGHTJ;
  audio1 &= ~WM8990_AIF_LRCLK_INV;
  break;
 case 129:
  audio1 |= WM8990_AIF_TMF_LEFTJ;
  audio1 &= ~WM8990_AIF_LRCLK_INV;
  break;
 case 132:
  audio1 |= WM8990_AIF_TMF_DSP;
  audio1 &= ~WM8990_AIF_LRCLK_INV;
  break;
 case 131:
  audio1 |= WM8990_AIF_TMF_DSP | WM8990_AIF_LRCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_write(codec, WM8990_AUDIO_INTERFACE_1, audio1);
 snd_soc_write(codec, WM8990_AUDIO_INTERFACE_3, audio3);
 return 0;
}
