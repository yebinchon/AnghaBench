
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int EINVAL ;




 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int WM8900_REG_AUDIO1 ;
 int WM8900_REG_DACCTRL ;
 int WM8900_REG_DACCTRL_DAC_SB_FILT ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8900_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params,
 struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 u16 reg;

 reg = snd_soc_read(codec, WM8900_REG_AUDIO1) & ~0x60;

 switch (params_format(params)) {
 case 131:
  break;
 case 130:
  reg |= 0x20;
  break;
 case 129:
  reg |= 0x40;
  break;
 case 128:
  reg |= 0x60;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_write(codec, WM8900_REG_AUDIO1, reg);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  reg = snd_soc_read(codec, WM8900_REG_DACCTRL);

  if (params_rate(params) <= 24000)
   reg |= WM8900_REG_DACCTRL_DAC_SB_FILT;
  else
   reg &= ~WM8900_REG_DACCTRL_DAC_SB_FILT;

  snd_soc_write(codec, WM8900_REG_DACCTRL, reg);
 }

 return 0;
}
